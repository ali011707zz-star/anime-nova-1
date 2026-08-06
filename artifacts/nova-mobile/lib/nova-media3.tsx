import React, { useCallback, useMemo, useRef, useState } from "react";
import { Platform, View } from "react-native";
import { requireNativeViewManager } from "expo-modules-core";

export type NovaMedia3Event =
  | "playingChange"
  | "statusChange"
  | "progress"
  | "ended";

type NativePlaybackEvent = {
  state?: "idle" | "loading" | "readyToPlay" | "ended" | "error";
  isPlaying?: boolean;
  currentTime?: number;
  duration?: number;
  message?: string;
};

export type NovaMedia3ViewProps = {
  sourceUrl?: string;
  sourceHeaders?: string;
  command?: string;
  onPlaybackState?: (event: NativePlaybackEvent) => void;
  onProgress?: (event: NativePlaybackEvent) => void;
  onPlayerError?: (event: NativePlaybackEvent) => void;
  style?: unknown;
  contentFit?: "contain" | "cover" | "fill";
};

const NativeView: any =
  Platform.OS === "android"
    ? requireNativeViewManager<NovaMedia3ViewProps>("NovaMedia3")
    : View;

function encodeCommand(sequence: number, action: string, value?: number) {
  return `${sequence}:${action}${value === undefined ? "" : `:${value}`}`;
}

/**
 * Adapter matching the player surface used by RiftPlayer.
 * Native callbacks update refs (not a second player object), while commands
 * are serialized through props so Expo's view lifecycle remains deterministic.
 */
export function useNovaMedia3Player(
  initialUrl: string,
  initialHeaders?: Record<string, string>,
  initialPosition = 0,
) {
  const [sourceUrl, setSourceUrl] = useState(initialUrl);
  const [sourceHeaders, setSourceHeaders] = useState(
    JSON.stringify(initialHeaders ?? {}),
  );
  const [command, setCommand] = useState("");
  const sequenceRef = useRef(0);
  const currentTimeRef = useRef(initialPosition);
  const durationRef = useRef(0);
  const playingRef = useRef(false);
  const initialPositionRef = useRef(initialPosition > 5 ? initialPosition : 0);
  const listenersRef = useRef(
    new Map<NovaMedia3Event, Set<(event: any) => void>>(),
  );

  const emit = useCallback((event: NovaMedia3Event, payload: any) => {
    listenersRef.current.get(event)?.forEach((listener) => listener(payload));
  }, []);

  const onPlaybackState = useCallback(
    (event: NativePlaybackEvent) => {
      if (typeof event.currentTime === "number") currentTimeRef.current = event.currentTime;
      if (typeof event.duration === "number") durationRef.current = event.duration;
      if (typeof event.isPlaying === "boolean") playingRef.current = event.isPlaying;
      emit("statusChange", event);
      emit("playingChange", event);
      if (event.state === "ended") emit("ended", event);
    },
    [emit],
  );

  const onProgress = useCallback(
    (event: NativePlaybackEvent) => {
      if (typeof event.currentTime === "number") currentTimeRef.current = event.currentTime;
      if (typeof event.duration === "number") durationRef.current = event.duration;
      emit("progress", event);
    },
    [emit],
  );

  const onPlayerError = useCallback(
    (event: NativePlaybackEvent) => {
      emit("statusChange", { ...event, state: "error" });
    },
    [emit],
  );

  const send = useCallback((action: string, value?: number) => {
    sequenceRef.current += 1;
    setCommand(encodeCommand(sequenceRef.current, action, value));
  }, []);

  const player = useMemo(() => {
    const api = {
      get currentTime() {
        return currentTimeRef.current;
      },
      set currentTime(value: number) {
        currentTimeRef.current = Math.max(0, value || 0);
        send("seek", currentTimeRef.current);
      },
      get duration() {
        return durationRef.current;
      },
      get playing() {
        return playingRef.current;
      },
      get volume() {
        return 1;
      },
      set volume(value: number) {
        send("volume", Math.max(0, Math.min(1, value)));
      },
      get playbackRate() {
        return 1;
      },
      set playbackRate(value: number) {
        send("speed", Math.max(0.25, Math.min(3, value || 1)));
      },
      play() {
        send("play");
      },
      pause() {
        send("pause");
      },
      replace(url: string, headers?: Record<string, string>) {
        setSourceUrl(url);
        setSourceHeaders(JSON.stringify(headers ?? {}));
      },
      enterPictureInPicture() {
        send("pip");
      },
      addListener(event: NovaMedia3Event, listener: (payload: any) => void) {
        let listeners = listenersRef.current.get(event);
        if (!listeners) {
          listeners = new Set();
          listenersRef.current.set(event, listeners);
        }
        listeners.add(listener);
        return {
          remove: () => {
            listeners?.delete(listener);
          },
        };
      },
    };
    return api;
  }, [send]);

  const viewProps = useMemo(
    () => ({
      sourceUrl,
      sourceHeaders,
      command,
      onPlaybackState,
      onProgress,
      onPlayerError,
    }),
    [sourceUrl, sourceHeaders, command, onPlaybackState, onProgress, onPlayerError],
  );

  return Object.assign(player, { viewProps });
}

export function NovaMedia3View(props: NovaMedia3ViewProps) {
  return <NativeView {...props} />;
}