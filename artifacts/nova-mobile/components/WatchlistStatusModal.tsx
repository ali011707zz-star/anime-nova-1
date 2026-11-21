import React, { useCallback, useEffect, useRef, useState } from "react";
import { BackHandler, findNodeHandle, Image, Modal, Platform, ScrollView, StyleSheet, Text, View } from "react-native";
import { Ionicons } from "@expo/vector-icons";
import { useSafeAreaInsets } from "react-native-safe-area-context";
import { useColors } from "@/hooks/useColors";
import { tvFocusStyle, TvPressable as Pressable, useTvMetrics } from "@/utils/tv";
import { WATCHLIST_STATUSES, WatchlistStatus } from "@/utils/watchlistStatus";

export interface WatchlistStatusModalProps {
  visible: boolean;
  title: string;
  thumbnail?: string;
  currentStatus?: WatchlistStatus | null;
  isSaved: boolean;
  onSelect: (status: WatchlistStatus) => void;
  onRemove?: () => void;
  onClose: () => void;
}

export function WatchlistStatusModal({
  visible,
  title,
  thumbnail,
  currentStatus,
  isSaved,
  onSelect,
  onRemove,
  onClose,
}: WatchlistStatusModalProps) {
  const colors = useColors();
  const insets = useSafeAreaInsets();
  const { tv: tvMode } = useTvMetrics();

  const closeRef = useRef<View | null>(null);
  const rowRefs = useRef<(View | null)[]>([]);
  const removeRef = useRef<View | null>(null);
  const [tvHandles, setTvHandles] = useState<{
    close?: number;
    rows: (number | undefined)[];
    remove?: number;
  }>({ rows: [] });

  const syncTvHandles = useCallback(() => {
    if (!tvMode || !visible) return;
    try {
      const close = closeRef.current ? (findNodeHandle(closeRef.current) ?? undefined) : undefined;
      const rows = WATCHLIST_STATUSES.map((_, idx) => {
        const node = rowRefs.current[idx];
        return node ? (findNodeHandle(node) ?? undefined) : undefined;
      });
      const remove = removeRef.current ? (findNodeHandle(removeRef.current) ?? undefined) : undefined;
      setTvHandles((prev) => {
        const sameRows =
          prev.rows.length === rows.length &&
          prev.rows.every((v, i) => v === rows[i]);
        if (prev.close === close && prev.remove === remove && sameRows) return prev;
        return { close, rows, remove };
      });
    } catch {}
  }, [tvMode, visible]);

  useEffect(() => {
    if (!visible || !tvMode) return;
    const t = setTimeout(syncTvHandles, 30);
    return () => clearTimeout(t);
  }, [visible, tvMode, isSaved, syncTvHandles]);

  useEffect(() => {
    if (!visible || !tvMode || Platform.OS !== "android") return;
    const sub = BackHandler.addEventListener("hardwareBackPress", () => {
      onClose();
      return true;
    });
    return () => sub.remove();
  }, [visible, tvMode, onClose]);

  if (!visible) return null;

  const preferredId: WatchlistStatus = currentStatus ?? WATCHLIST_STATUSES[0].id;
  const hasRemove = Boolean(isSaved && onRemove);

  const sheetInner = (
    <>
      {/* Header */}
      <View style={s.header}>
        <Pressable
          ref={closeRef}
          onLayout={syncTvHandles}
          onPress={onClose}
          focusable={tvMode}
          nextFocusUp={tvMode ? tvHandles.close : undefined}
          nextFocusDown={tvMode ? tvHandles.rows[0] : undefined}
          nextFocusLeft={tvMode ? tvHandles.close : undefined}
          nextFocusRight={tvMode ? tvHandles.close : undefined}
          hitSlop={8}
          style={({ focused }) => [
            s.closeBtn,
            { backgroundColor: colors.surface, borderColor: colors.border },
            tvMode && tvFocusStyle(focused),
          ]}
        >
          <Ionicons name="close" size={tvMode ? 20 : 18} color={colors.mutedForeground} />
        </Pressable>

        <View style={s.headerTextWrap}>
          <Text style={[s.headerKicker, tvMode && s.tvHeaderKicker, { color: colors.primary }]}>
            قائمتي
          </Text>
          <Text
            style={[s.headerTitle, tvMode && s.tvHeaderTitle, { color: colors.text }]}
            numberOfLines={1}
          >
            {title}
          </Text>
        </View>

        {thumbnail ? (
          <Image source={{ uri: thumbnail }} style={[s.thumb, tvMode && s.tvThumb]} resizeMode="cover" />
        ) : null}
      </View>

      <View style={[s.divider, { backgroundColor: colors.border }]} />

      {/* Status Options */}
      <View style={s.list}>
        {WATCHLIST_STATUSES.map((opt, idx) => {
          const active = isSaved && currentStatus === opt.id;
          const isPreferred = tvMode && opt.id === preferredId;
          const selfHandle = tvHandles.rows[idx];
          const upHandle = idx === 0 ? tvHandles.close : tvHandles.rows[idx - 1];
          const downHandle =
            idx < WATCHLIST_STATUSES.length - 1
              ? tvHandles.rows[idx + 1]
              : hasRemove
                ? tvHandles.remove
                : selfHandle;

          return (
            <Pressable
              key={opt.id}
              ref={(node) => {
                rowRefs.current[idx] = node;
              }}
              onLayout={syncTvHandles}
              onPress={() => {
                onSelect(opt.id);
                onClose();
              }}
              focusable={tvMode}
              hasTVPreferredFocus={isPreferred}
              nextFocusUp={tvMode ? upHandle : undefined}
              nextFocusDown={tvMode ? downHandle : undefined}
              nextFocusLeft={tvMode ? selfHandle : undefined}
              nextFocusRight={tvMode ? selfHandle : undefined}
              style={({ focused }) => [
                s.row,
                tvMode && s.tvRow,
                {
                  backgroundColor: active ? opt.bg : colors.surface,
                  borderColor: active ? opt.border : colors.border,
                },
                tvMode && tvFocusStyle(focused),
              ]}
            >
              {/* Checkmark on left (RTL) */}
              <View style={s.checkSlot}>
                {active ? (
                  <Ionicons name="checkmark" size={tvMode ? 22 : 20} color={opt.color} />
                ) : null}
              </View>

              {/* Label + Icon on right (RTL) */}
              <View style={s.rowRight}>
                <Text
                  style={[
                    s.rowLabel,
                    tvMode && s.tvRowLabel,
                    { color: active ? opt.color : colors.text },
                  ]}
                >
                  {opt.label}
                </Text>
                <View style={[s.iconBox, { backgroundColor: opt.bg, borderColor: opt.border }]}>
                  <Ionicons
                    name={active ? opt.activeIcon : opt.icon}
                    size={tvMode ? 21 : 19}
                    color={opt.color}
                  />
                </View>
              </View>
            </Pressable>
          );
        })}
      </View>

      {/* Remove button (only when already saved) */}
      {hasRemove ? (
        <>
          <View style={[s.divider, { backgroundColor: colors.border, marginTop: 10 }]} />
          <Pressable
            ref={removeRef}
            onLayout={syncTvHandles}
            onPress={() => {
              onRemove?.();
              onClose();
            }}
            focusable={tvMode}
            nextFocusUp={tvMode ? tvHandles.rows[WATCHLIST_STATUSES.length - 1] : undefined}
            nextFocusDown={tvMode ? tvHandles.remove : undefined}
            nextFocusLeft={tvMode ? tvHandles.remove : undefined}
            nextFocusRight={tvMode ? tvHandles.remove : undefined}
            style={({ focused }) => [
              s.removeRow,
              tvMode && s.tvRow,
              tvMode && tvFocusStyle(focused),
            ]}
          >
            <Text style={[s.removeText, tvMode && s.tvRowLabel]}>إزالة من المحفوظات</Text>
            <Ionicons name="trash-outline" size={tvMode ? 20 : 18} color="#F43F5E" />
          </Pressable>
        </>
      ) : null}
    </>
  );

  const modalContent = (
    <View style={[s.overlay, tvMode && s.tvOverlay]}>
      {/* Non-focusable backdrop so TV remote D-pad never gets trapped outside the sheet */}
      <Pressable
        focusable={false}
        accessible={false}
        onPress={onClose}
        style={StyleSheet.absoluteFill}
      />

      <View
        style={[
          s.sheet,
          tvMode ? s.tvSheet : { paddingBottom: Math.max(insets.bottom, 16) + 12 },
          { backgroundColor: colors.card, borderColor: colors.border },
        ]}
      >
        {!tvMode && <View style={[s.handle, { backgroundColor: colors.border }]} />}
        {tvMode ? (
          <ScrollView
            showsVerticalScrollIndicator={false}
            focusable={false}
            contentContainerStyle={s.tvScrollContent}
          >
            {sheetInner}
          </ScrollView>
        ) : (
          sheetInner
        )}
      </View>
    </View>
  );

  if (tvMode) {
    return (
      <View
        testID="nova-tv-modal-root"
        style={[StyleSheet.absoluteFillObject, { zIndex: 9999, elevation: 9999 }]}
      >
        {modalContent}
      </View>
    );
  }

  return (
    <Modal
      visible={visible}
      transparent
      animationType="slide"
      onRequestClose={onClose}
      statusBarTranslucent
    >
      {modalContent}
    </Modal>
  );
}

const s = StyleSheet.create({
  overlay: {
    flex: 1,
    backgroundColor: "rgba(0, 0, 0, 0.72)",
    justifyContent: "flex-end",
  },
  tvOverlay: {
    justifyContent: "center",
    alignItems: "center",
    paddingHorizontal: 24,
    paddingVertical: 18,
  },
  sheet: {
    borderTopLeftRadius: 24,
    borderTopRightRadius: 24,
    borderWidth: 1,
    borderBottomWidth: 0,
    paddingTop: 10,
    paddingHorizontal: 18,
  },
  tvSheet: {
    width: "100%",
    maxWidth: 480,
    maxHeight: "92%",
    borderRadius: 22,
    borderBottomWidth: 1,
    paddingVertical: 14,
    paddingHorizontal: 18,
  },
  tvScrollContent: {
    padding: 4,
  },
  handle: {
    width: 40,
    height: 4,
    borderRadius: 2,
    alignSelf: "center",
    marginBottom: 12,
  },
  header: {
    flexDirection: "row",
    alignItems: "center",
    gap: 12,
    paddingBottom: 12,
  },
  closeBtn: {
    width: 34,
    height: 34,
    borderRadius: 17,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  headerTextWrap: {
    flex: 1,
    alignItems: "flex-end",
    gap: 1,
  },
  headerKicker: {
    fontSize: 12,
    fontFamily: "Cairo_700Bold",
  },
  tvHeaderKicker: {
    fontSize: 14,
  },
  headerTitle: {
    fontSize: 14,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
  },
  tvHeaderTitle: {
    fontSize: 16,
  },
  thumb: {
    width: 38,
    height: 52,
    borderRadius: 8,
    backgroundColor: "#1C1C22",
  },
  tvThumb: {
    width: 44,
    height: 60,
    borderRadius: 9,
  },
  divider: {
    height: 1,
    opacity: 0.65,
    marginBottom: 10,
  },
  list: {
    gap: 8,
  },
  row: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "space-between",
    paddingHorizontal: 14,
    paddingVertical: 11,
    borderRadius: 14,
    borderWidth: 1,
    minHeight: 52,
  },
  tvRow: {
    minHeight: 52,
    paddingHorizontal: 16,
    paddingVertical: 10,
    borderRadius: 14,
  },
  checkSlot: {
    width: 28,
    alignItems: "flex-start",
    justifyContent: "center",
  },
  rowRight: {
    flex: 1,
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "flex-end",
    gap: 12,
  },
  rowLabel: {
    fontSize: 14,
    fontFamily: "Cairo_700Bold",
    textAlign: "right",
  },
  tvRowLabel: {
    fontSize: 16,
  },
  iconBox: {
    width: 36,
    height: 36,
    borderRadius: 11,
    borderWidth: 1,
    alignItems: "center",
    justifyContent: "center",
  },
  removeRow: {
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
    gap: 8,
    paddingVertical: 12,
    borderRadius: 14,
    backgroundColor: "rgba(244, 63, 94, 0.12)",
    borderWidth: 1,
    borderColor: "rgba(244, 63, 94, 0.30)",
  },
  removeText: {
    fontSize: 13.5,
    fontFamily: "Cairo_700Bold",
    color: "#F43F5E",
  },
});
