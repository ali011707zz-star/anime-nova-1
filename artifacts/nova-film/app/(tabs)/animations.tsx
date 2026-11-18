import { Redirect } from "expo-router";
import React from "react";

export default function HiddenAnimationsRedirect() {
  return <Redirect href="/(tabs)/browse?type=animation" />;
}
