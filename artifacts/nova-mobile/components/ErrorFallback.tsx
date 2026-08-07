import AsyncStorage from "@react-native-async-storage/async-storage";
import React from "react";
import {
  Platform,
  Pressable,
  StyleSheet,
  Text,
  View,
} from "react-native";

export type ErrorFallbackProps = {
  error: Error;
  resetError: () => void;
};

/* مفاتيح AsyncStorage التي قد تتسبب في أعطال عند فسادها */
const VOLATILE_KEYS = ["nova-history", "nova-favorites", "nova-theme"];

/*
 * Keep the fallback dependency-free. It is rendered while the tree is
 * already recovering from an exception, so it must not use context or any
 * theme/safe-area hooks that may be part of the failed tree.
 */
export function ErrorFallback({ error, resetError }: ErrorFallbackProps) {
  const handleRestart = async () => {
    /* مسح البيانات المتقلبة قبل إعادة التشغيل لتجنب تكرار العطل */
    try {
      await Promise.all(VOLATILE_KEYS.map(k => AsyncStorage.removeItem(k)));
    } catch {}
    try {
      const expoModule = await import("expo");
      if (typeof (expoModule as any).reloadAppAsync === "function") {
        await (expoModule as any).reloadAppAsync();
        return;
      }
    } catch {}
    resetError();
  };

  return (
    <View style={styles.container}>
      <View style={styles.content}>
        <Text style={styles.title}>
          Something went wrong
        </Text>

        <Text style={styles.message}>
          Please reload the app to continue.
        </Text>

        <Pressable
          onPress={handleRestart}
          style={({ pressed }) => [
            styles.button,
            {
              opacity: pressed ? 0.9 : 1,
              transform: [{ scale: pressed ? 0.98 : 1 }],
            },
          ]}
        >
          <Text style={styles.buttonText}>
            Try Again
          </Text>
        </Pressable>
      </View>
      {__DEV__ && error?.message ? (
        <Text selectable style={styles.errorText}>{error.message}</Text>
      ) : null}
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    width: "100%",
    height: "100%",
    justifyContent: "center",
    alignItems: "center",
    padding: 24,
    backgroundColor: "#09090b",
  },
  content: {
    alignItems: "center",
    justifyContent: "center",
    gap: 16,
    width: "100%",
    maxWidth: 600,
  },
  title: {
    fontSize: 28,
    fontWeight: "700",
    textAlign: "center",
    lineHeight: 40,
    color: "#fafafa",
  },
  message: {
    fontSize: 16,
    textAlign: "center",
    lineHeight: 24,
    color: "#a1a1aa",
  },
  topButton: {
    position: "absolute",
    right: 16,
    width: 44,
    height: 44,
    borderRadius: 8,
    flexDirection: "row",
    alignItems: "center",
    justifyContent: "center",
    zIndex: 10,
  },
  button: {
    paddingVertical: 16,
    borderRadius: 8,
    paddingHorizontal: 24,
    minWidth: 200,
    backgroundColor: "#8b5cf6",
    shadowColor: "#000",
    shadowOffset: {
      width: 0,
      height: 2,
    },
    shadowOpacity: 0.1,
    shadowRadius: 4,
    elevation: 3,
  },
  buttonText: {
    fontWeight: "600",
    textAlign: "center",
    fontSize: 16,
    color: "#fff",
  },
  errorText: {
    fontSize: 12,
    lineHeight: 18,
    width: "100%",
    color: "#fca5a5",
    fontFamily: Platform.select({
      ios: "Menlo",
      android: "monospace",
      default: "monospace",
    }),
    textAlign: "center",
  },
});
