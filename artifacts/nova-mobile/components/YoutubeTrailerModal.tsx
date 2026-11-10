import React, { useEffect, useRef, useState } from "react";
import {
  I18nManager,
  Linking,
  Modal,
  Platform,
  StatusBar,
  StyleSheet,
  Text,
  View,
  useWindowDimensions,
} from "react-native";
import { Ionicons } from "@expo/vector-icons";
import * as ScreenOrientation from "expo-screen-orientation";
import { WebView } from "react-native-webview";
import { getYoutubeEmbedUrl, getYoutubeReferer } from "@/utils/youtube";
import { TvPressable as Pressable } from "@/utils/tv";

const ROW_RTL = I18nManager.isRTL ? "row" : "row-reverse";

const YOUTUBE_FIT_SCRIPT = `
(function() {
  try {
    var styleId = 'nova-yt-fit-style';
    if (!document.getElementById(styleId)) {
      var style = document.createElement('style');
      style.id = styleId;
      style.textContent = [
        'html, body { margin: 0 !important; padding: 0 !important; width: 100% !important; height: 100% !important; overflow: hidden !important; background: #000 !important; direction: ltr !important; }',
        '#player, #movie_player, .html5-video-player, .html5-video-container { position: absolute !important; top: 0 !important; left: 0 !important; right: 0 !important; bottom: 0 !important; width: 100% !important; height: 100% !important; margin: 0 !important; padding: 0 !important; direction: ltr !important; }',
        'video.html5-main-video, video { position: absolute !important; top: 0 !important; left: 0 !important; width: 100% !important; height: 100% !important; object-fit: contain !important; transform: none !important; }',
        '.ytp-caption-window-container { bottom: 8% !important; }',
        '.ytp-chrome-bottom { bottom: 0 !important; left: 12px !important; right: 12px !important; width: auto !important; }'
      ].join('\\n');
      (document.head || document.documentElement).appendChild(style);
    }
    function fixVideoMetrics() {
      var v = document.querySelector('video.html5-main-video') || document.querySelector('video');
      if (v) {
        v.style.setProperty('width', '100%', 'important');
        v.style.setProperty('height', '100%', 'important');
        v.style.setProperty('left', '0px', 'important');
        v.style.setProperty('top', '0px', 'important');
        v.style.setProperty('object-fit', 'contain', 'important');
      }
    }
    fixVideoMetrics();
    window.dispatchEvent(new Event('resize'));
    setTimeout(function() { fixVideoMetrics(); window.dispatchEvent(new Event('resize')); }, 180);
    setTimeout(function() { fixVideoMetrics(); window.dispatchEvent(new Event('resize')); }, 500);
    setTimeout(function() { fixVideoMetrics(); window.dispatchEvent(new Event('resize')); }, 1100);
    var obs = new MutationObserver(fixVideoMetrics);
    obs.observe(document.documentElement, { attributes: true, childList: true, subtree: true, attributeFilter: ['style', 'class'] });
  } catch (e) {}
  true;
})();
`;

type Props = {
  visible: boolean;
  videoId: string | null | undefined;
  title?: string;
  onClose: () => void;
  tvMode?: boolean;
};

export function YoutubeTrailerModal({
  visible,
  videoId,
  title,
  onClose,
  tvMode = false,
}: Props) {
  const { width: winW, height: winH } = useWindowDimensions();
  const [stage, setStage] = useState<{ w: number; h: number }>({ w: 0, h: 0 });
  const webViewRef = useRef<WebView>(null);

  useEffect(() => {
    if (Platform.OS === "web" || tvMode) return;
    if (visible) {
      ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.LANDSCAPE).catch(() => {});
    } else {
      ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.PORTRAIT_UP).catch(() => {});
    }
    return () => {
      if (visible && !tvMode) {
        ScreenOrientation.lockAsync(ScreenOrientation.OrientationLock.PORTRAIT_UP).catch(() => {});
      }
    };
  }, [visible, tvMode]);

  useEffect(() => {
    if (!visible) return;
    const t = setTimeout(() => {
      webViewRef.current?.injectJavaScript(YOUTUBE_FIT_SCRIPT);
    }, 320);
    return () => clearTimeout(t);
  }, [visible, stage.w, stage.h, winW, winH]);

  if (!videoId) return null;

  const landscapeW = Math.max(winW, winH);
  const landscapeH = Math.min(winW, winH);
  const availW = stage.w > 0 ? stage.w : landscapeW;
  const availH = stage.h > 0 ? stage.h : Math.max(160, landscapeH - 42);

  // Compute exact 16:9 box guaranteed to fit inside the stage without any bottom or side cropping
  const boxH = Math.max(140, Math.floor(Math.min(availH, availW * (9 / 16))));
  const boxW = Math.max(248, Math.floor(boxH * (16 / 9)));

  return (
    <Modal
      visible={visible}
      animationType={tvMode ? "none" : "fade"}
      statusBarTranslucent
      supportedOrientations={["landscape", "landscape-left", "landscape-right", "portrait"]}
      onRequestClose={onClose}
    >
      <View style={styles.root}>
        <StatusBar hidden />
        <View style={styles.topBar}>
          <View style={styles.titleRow}>
            <Ionicons name="logo-youtube" size={19} color="#FF0000" />
            <Text style={styles.titleText} numberOfLines={1}>
              {title ? `الإعلان الدعائي — ${title}` : "الإعلان الدعائي"}
            </Text>
          </View>

          <View style={styles.actionsRow}>
            <Pressable
              onPress={() =>
                Linking.openURL(`https://www.youtube.com/watch?v=${videoId}`).catch(() => {})
              }
              style={styles.iconBtn}
            >
              <Ionicons name="open-outline" size={15} color="rgba(255,255,255,0.82)" />
            </Pressable>
            <Pressable onPress={onClose} style={styles.iconBtn}>
              <Ionicons name="close" size={18} color="#fff" />
            </Pressable>
          </View>
        </View>

        <View
          style={styles.stage}
          onLayout={(e) => {
            const { width, height } = e.nativeEvent.layout;
            if (width > 0 && height > 0) {
              setStage({ w: width, h: height });
            }
          }}
        >
          <View style={[styles.playerFrame, { width: boxW, height: boxH }]}>
            <WebView
              ref={webViewRef}
              key={`${videoId}-${boxW}x${boxH}`}
              source={{
                uri: getYoutubeEmbedUrl(videoId),
                headers: { Referer: getYoutubeReferer() },
              }}
              style={styles.webview}
              containerStyle={styles.webviewContainer}
              allowsFullscreenVideo
              allowsInlineMediaPlayback
              mediaPlaybackRequiresUserAction={false}
              javaScriptEnabled
              domStorageEnabled
              scalesPageToFit={false}
              setBuiltInZoomControls={false}
              setDisplayZoomControls={false}
              scrollEnabled={false}
              bounces={false}
              overScrollMode="never"
              originWhitelist={["*"]}
              mixedContentMode="always"
              thirdPartyCookiesEnabled
              injectedJavaScriptBeforeContentLoaded={YOUTUBE_FIT_SCRIPT}
              injectedJavaScript={YOUTUBE_FIT_SCRIPT}
              onLoadEnd={() => {
                webViewRef.current?.injectJavaScript(YOUTUBE_FIT_SCRIPT);
              }}
              userAgent="Mozilla/5.0 (Linux; Android 13; Pixel 7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Mobile Safari/537.36"
              onShouldStartLoadWithRequest={(req) => {
                const url = req.url;
                if (
                  url.startsWith("about:") ||
                  url.startsWith("data:") ||
                  url.startsWith("blob:") ||
                  url.includes("googlevideo.com") ||
                  url.includes("ytimg.com") ||
                  url.includes("googleapis.com") ||
                  url.includes("youtube.com") ||
                  url.includes("youtube-nocookie.com")
                ) {
                  return true;
                }
                Linking.openURL(url).catch(() => {});
                return false;
              }}
            />
          </View>
        </View>
      </View>
    </Modal>
  );
}

const styles = StyleSheet.create({
  root: {
    flex: 1,
    backgroundColor: "#000",
  },
  topBar: {
    height: 42,
    paddingHorizontal: 14,
    flexDirection: ROW_RTL,
    alignItems: "center",
    justifyContent: "space-between",
    backgroundColor: "#050507",
    borderBottomWidth: 1,
    borderBottomColor: "rgba(255,255,255,0.1)",
  },
  titleRow: {
    flex: 1,
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 8,
    paddingEnd: 10,
  },
  titleText: {
    flexShrink: 1,
    color: "#ffffff",
    fontSize: 13,
    fontFamily: "Cairo_700Bold",
  },
  actionsRow: {
    flexDirection: ROW_RTL,
    alignItems: "center",
    gap: 8,
  },
  iconBtn: {
    width: 30,
    height: 30,
    borderRadius: 15,
    backgroundColor: "rgba(255,255,255,0.1)",
    borderWidth: 1,
    borderColor: "rgba(255,255,255,0.16)",
    alignItems: "center",
    justifyContent: "center",
  },
  stage: {
    flex: 1,
    backgroundColor: "#000",
    alignItems: "center",
    justifyContent: "center",
    overflow: "hidden",
  },
  playerFrame: {
    backgroundColor: "#000",
    overflow: "hidden",
    alignSelf: "center",
  },
  webviewContainer: {
    flex: 1,
    backgroundColor: "#000",
  },
  webview: {
    flex: 1,
    backgroundColor: "#000",
  },
});
