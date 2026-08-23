import { Redirect } from "expo-router";

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
  return <Redirect href="/settings" />;
}