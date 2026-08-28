package com.google.android.gms.internal.measurement;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.shadow.ShadowDrawableWrapper;
import com.twitter.sdk.android.core.internal.scribe.EventsFilesManager;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeSet;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-base@@19.0.2 */
/* loaded from: classes.dex */
public final class zzli {
    public static String zza(zzlg zzlgVar, String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("# ");
        sb2.append(str);
        zzd(zzlgVar, sb2, 0);
        return sb2.toString();
    }

    public static final void zzb(StringBuilder sb2, int i10, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it2 = ((List) obj).iterator();
            while (it2.hasNext()) {
                zzb(sb2, i10, str, it2.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it3 = ((Map) obj).entrySet().iterator();
            while (it3.hasNext()) {
                zzb(sb2, i10, str, (Map.Entry) it3.next());
            }
            return;
        }
        sb2.append('\n');
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            sb2.append(' ');
        }
        sb2.append(str);
        if (obj instanceof String) {
            sb2.append(": \"");
            sb2.append(zzmg.zza(zziy.zzm((String) obj)));
            sb2.append('\"');
            return;
        }
        if (obj instanceof zziy) {
            sb2.append(": \"");
            sb2.append(zzmg.zza((zziy) obj));
            sb2.append('\"');
            return;
        }
        if (obj instanceof zzjz) {
            sb2.append(" {");
            zzd((zzjz) obj, sb2, i10 + 2);
            sb2.append("\n");
            while (i11 < i10) {
                sb2.append(' ');
                i11++;
            }
            sb2.append("}");
            return;
        }
        if (obj instanceof Map.Entry) {
            sb2.append(" {");
            Map.Entry entry = (Map.Entry) obj;
            int i13 = i10 + 2;
            zzb(sb2, i13, "key", entry.getKey());
            zzb(sb2, i13, AppMeasurementSdk.ConditionalUserProperty.VALUE, entry.getValue());
            sb2.append("\n");
            while (i11 < i10) {
                sb2.append(' ');
                i11++;
            }
            sb2.append("}");
            return;
        }
        sb2.append(": ");
        sb2.append(obj.toString());
    }

    private static final String zzc(String str) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (Character.isUpperCase(charAt)) {
                sb2.append(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
            }
            sb2.append(Character.toLowerCase(charAt));
        }
        return sb2.toString();
    }

    private static void zzd(zzlg zzlgVar, StringBuilder sb2, int i10) {
        boolean equals;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        TreeSet<String> treeSet = new TreeSet();
        for (Method method : zzlgVar.getClass().getDeclaredMethods()) {
            hashMap2.put(method.getName(), method);
            if (method.getParameterTypes().length == 0) {
                hashMap.put(method.getName(), method);
                if (method.getName().startsWith("get")) {
                    treeSet.add(method.getName());
                }
            }
        }
        for (String str : treeSet) {
            String substring = str.startsWith("get") ? str.substring(3) : str;
            if (substring.endsWith("List") && !substring.endsWith("OrBuilderList") && !substring.equals("List")) {
                String valueOf = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf2 = String.valueOf(substring.substring(1, substring.length() - 4));
                String concat = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
                Method method2 = (Method) hashMap.get(str);
                if (method2 != null && method2.getReturnType().equals(List.class)) {
                    zzb(sb2, i10, zzc(concat), zzjz.zzbE(method2, zzlgVar, new Object[0]));
                }
            }
            if (substring.endsWith("Map") && !substring.equals("Map")) {
                String valueOf3 = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf4 = String.valueOf(substring.substring(1, substring.length() - 3));
                String concat2 = valueOf4.length() != 0 ? valueOf3.concat(valueOf4) : new String(valueOf3);
                Method method3 = (Method) hashMap.get(str);
                if (method3 != null && method3.getReturnType().equals(Map.class) && !method3.isAnnotationPresent(Deprecated.class) && Modifier.isPublic(method3.getModifiers())) {
                    zzb(sb2, i10, zzc(concat2), zzjz.zzbE(method3, zzlgVar, new Object[0]));
                }
            }
            if (((Method) hashMap2.get(substring.length() != 0 ? "set".concat(substring) : new String("set"))) != null) {
                if (substring.endsWith("Bytes")) {
                    String valueOf5 = String.valueOf(substring.substring(0, substring.length() - 5));
                    if (!hashMap.containsKey(valueOf5.length() != 0 ? "get".concat(valueOf5) : new String("get"))) {
                    }
                }
                String valueOf6 = String.valueOf(substring.substring(0, 1).toLowerCase());
                String valueOf7 = String.valueOf(substring.substring(1));
                String concat3 = valueOf7.length() != 0 ? valueOf6.concat(valueOf7) : new String(valueOf6);
                Method method4 = (Method) hashMap.get(substring.length() != 0 ? "get".concat(substring) : new String("get"));
                Method method5 = (Method) hashMap.get(substring.length() != 0 ? "has".concat(substring) : new String("has"));
                if (method4 != null) {
                    Object zzbE = zzjz.zzbE(method4, zzlgVar, new Object[0]);
                    if (method5 == null) {
                        if (zzbE instanceof Boolean) {
                            if (((Boolean) zzbE).booleanValue()) {
                                zzb(sb2, i10, zzc(concat3), zzbE);
                            }
                        } else if (zzbE instanceof Integer) {
                            if (((Integer) zzbE).intValue() != 0) {
                                zzb(sb2, i10, zzc(concat3), zzbE);
                            }
                        } else if (zzbE instanceof Float) {
                            if (((Float) zzbE).floatValue() != StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD) {
                                zzb(sb2, i10, zzc(concat3), zzbE);
                            }
                        } else if (!(zzbE instanceof Double)) {
                            if (zzbE instanceof String) {
                                equals = zzbE.equals("");
                            } else if (zzbE instanceof zziy) {
                                equals = zzbE.equals(zziy.zzb);
                            } else if (zzbE instanceof zzlg) {
                                if (zzbE != ((zzlg) zzbE).zzbL()) {
                                    zzb(sb2, i10, zzc(concat3), zzbE);
                                }
                            } else {
                                if ((zzbE instanceof Enum) && ((Enum) zzbE).ordinal() == 0) {
                                }
                                zzb(sb2, i10, zzc(concat3), zzbE);
                            }
                            if (!equals) {
                                zzb(sb2, i10, zzc(concat3), zzbE);
                            }
                        } else if (((Double) zzbE).doubleValue() != ShadowDrawableWrapper.COS_45) {
                            zzb(sb2, i10, zzc(concat3), zzbE);
                        }
                    } else if (((Boolean) zzjz.zzbE(method5, zzlgVar, new Object[0])).booleanValue()) {
                        zzb(sb2, i10, zzc(concat3), zzbE);
                    }
                }
            }
        }
        if (!(zzlgVar instanceof zzjw)) {
            zzmj zzmjVar = ((zzjz) zzlgVar).zzc;
            if (zzmjVar != null) {
                zzmjVar.zzg(sb2, i10);
                return;
            }
            return;
        }
        throw null;
    }
}
