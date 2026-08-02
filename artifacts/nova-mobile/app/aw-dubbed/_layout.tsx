import { Slot } from "expo-router";

// لا نستخدم Stack هنا — الـ root Stack في app/_layout.tsx يدير
// شاشتَي [key] و watch مباشرةً (يُخفي tab bar ويضبط التحريك).
// استخدام Stack متداخل هنا كان يُسبّب تعارضاً: يظهر tab bar أثناء التشغيل
// وتكرار مدخلات التاريخ فيُربك زر الرجوع.
export default function AwDubbedLayout() {
  return <Slot />;
}
