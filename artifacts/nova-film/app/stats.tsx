import { Redirect } from "expo-router";
import React from "react";

export default function HiddenRouteRedirect() {
  return <Redirect href="/(tabs)" />;
}
