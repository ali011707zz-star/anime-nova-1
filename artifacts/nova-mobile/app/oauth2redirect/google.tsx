import { useEffect } from "react";
import { ActivityIndicator, View } from "react-native";
import { useRouter } from "expo-router";

/**
 * Native Google OAuth callback.
 *
 * expo-auth-session consumes the authorization response, while Expo Router
 * still receives the deep link as an app route on some Android builds. Keep
 * this callback registered so that the router never falls through to the
 * default "This screen doesn't exist" page. Returning to settings also
 * remounts the AuthSheet, where useAuthRequest handles the response.
 */
export default function GoogleOAuthCallback() {
  const router = useRouter();

  useEffect(() => {
    // Replace the callback entry; pushing /settings here leaves the callback
    // and every intermediate settings instance behind the visible screen.
    router.replace("/settings");
  }, [router]);

  return (
    <View style={{ flex: 1, backgroundColor: "#08080b", alignItems: "center", justifyContent: "center" }}>
      <ActivityIndicator color="#a78bfa" />
    </View>
  );
}