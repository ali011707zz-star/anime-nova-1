package com.google.android.gms.internal.measurement;

import com.google.android.material.shadow.ShadowDrawableWrapper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: com.google.android.gms:play-services-measurement@@19.0.2 */
/* loaded from: classes.dex */
public final class zzat implements Iterable<zzap>, zzap {
    private final String zza;

    public zzat(String str) {
        if (str == null) {
            throw new IllegalArgumentException("StringValue cannot be null.");
        }
        this.zza = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzat) {
            return this.zza.equals(((zzat) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator<zzap> iterator() {
        return new zzas(this);
    }

    public final String toString() {
        String str = this.zza;
        StringBuilder sb2 = new StringBuilder(str.length() + 2);
        sb2.append('\"');
        sb2.append(str);
        sb2.append('\"');
        return sb2.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:45:0x0171. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v101 */
    /* JADX WARN: Type inference failed for: r0v78 */
    /* JADX WARN: Type inference failed for: r0v79, types: [int] */
    @Override // com.google.android.gms.internal.measurement.zzap
    public final zzap zzbK(String str, zzg zzgVar, List<zzap> list) {
        String str2;
        String str3;
        String str4;
        String str5;
        char c10;
        zzat zzatVar;
        int i10;
        zzap zzahVar;
        String str6;
        double min;
        double min2;
        zzat zzatVar2;
        int i11;
        boolean z10;
        zzg zzgVar2;
        int i12;
        int length;
        if ("charAt".equals(str) || "concat".equals(str) || "hasOwnProperty".equals(str) || "indexOf".equals(str) || "lastIndexOf".equals(str) || "match".equals(str) || "replace".equals(str) || "search".equals(str) || "slice".equals(str) || "split".equals(str) || "substring".equals(str) || "toLowerCase".equals(str) || "toLocaleLowerCase".equals(str) || "toString".equals(str) || "toUpperCase".equals(str)) {
            str2 = "toLocaleUpperCase";
        } else {
            str2 = "toLocaleUpperCase";
            if (!str2.equals(str) && !"trim".equals(str)) {
                throw new IllegalArgumentException(String.format("%s is not a String function", str));
            }
        }
        switch (str.hashCode()) {
            case -1789698943:
                str3 = "charAt";
                str4 = "hasOwnProperty";
                if (str.equals(str4)) {
                    str5 = "toString";
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                str5 = "toString";
                break;
            case -1776922004:
                str3 = "charAt";
                if (str.equals("toString")) {
                    c10 = 14;
                    str4 = "hasOwnProperty";
                    str5 = "toString";
                    break;
                }
                str4 = "hasOwnProperty";
                c10 = 65535;
                str5 = "toString";
            case -1464939364:
                str3 = "charAt";
                if (str.equals("toLocaleLowerCase")) {
                    c10 = '\f';
                    str4 = "hasOwnProperty";
                    str5 = "toString";
                    break;
                }
                str4 = "hasOwnProperty";
                c10 = 65535;
                str5 = "toString";
            case -1361633751:
                str3 = "charAt";
                if (str.equals(str3)) {
                    str4 = "hasOwnProperty";
                    c10 = 0;
                    str5 = "toString";
                    break;
                }
                str4 = "hasOwnProperty";
                c10 = 65535;
                str5 = "toString";
            case -1354795244:
                if (str.equals("concat")) {
                    str3 = "charAt";
                    str4 = "hasOwnProperty";
                    c10 = 1;
                    str5 = "toString";
                    break;
                }
                str3 = "charAt";
                str4 = "hasOwnProperty";
                c10 = 65535;
                str5 = "toString";
            case -1137582698:
                if (str.equals("toLowerCase")) {
                    c10 = '\r';
                    str3 = "charAt";
                    str4 = "hasOwnProperty";
                    str5 = "toString";
                    break;
                }
                str3 = "charAt";
                str4 = "hasOwnProperty";
                c10 = 65535;
                str5 = "toString";
            case -906336856:
                if (str.equals("search")) {
                    c10 = 7;
                    str3 = "charAt";
                    str4 = "hasOwnProperty";
                    str5 = "toString";
                    break;
                }
                str3 = "charAt";
                str4 = "hasOwnProperty";
                c10 = 65535;
                str5 = "toString";
            case -726908483:
                if (str.equals(str2)) {
                    c10 = 11;
                    str3 = "charAt";
                    str4 = "hasOwnProperty";
                    str5 = "toString";
                    break;
                }
                str3 = "charAt";
                str4 = "hasOwnProperty";
                c10 = 65535;
                str5 = "toString";
            case -467511597:
                if (str.equals("lastIndexOf")) {
                    c10 = 4;
                    str3 = "charAt";
                    str4 = "hasOwnProperty";
                    str5 = "toString";
                    break;
                }
                str3 = "charAt";
                str4 = "hasOwnProperty";
                c10 = 65535;
                str5 = "toString";
            case -399551817:
                if (str.equals("toUpperCase")) {
                    c10 = 15;
                    str3 = "charAt";
                    str4 = "hasOwnProperty";
                    str5 = "toString";
                    break;
                }
                str3 = "charAt";
                str4 = "hasOwnProperty";
                c10 = 65535;
                str5 = "toString";
            case 3568674:
                if (str.equals("trim")) {
                    c10 = 16;
                    str3 = "charAt";
                    str4 = "hasOwnProperty";
                    str5 = "toString";
                    break;
                }
                str3 = "charAt";
                str4 = "hasOwnProperty";
                c10 = 65535;
                str5 = "toString";
            case 103668165:
                if (str.equals("match")) {
                    c10 = 5;
                    str3 = "charAt";
                    str4 = "hasOwnProperty";
                    str5 = "toString";
                    break;
                }
                str3 = "charAt";
                str4 = "hasOwnProperty";
                c10 = 65535;
                str5 = "toString";
            case 109526418:
                if (str.equals("slice")) {
                    c10 = '\b';
                    str3 = "charAt";
                    str4 = "hasOwnProperty";
                    str5 = "toString";
                    break;
                }
                str3 = "charAt";
                str4 = "hasOwnProperty";
                c10 = 65535;
                str5 = "toString";
            case 109648666:
                if (str.equals("split")) {
                    c10 = '\t';
                    str3 = "charAt";
                    str4 = "hasOwnProperty";
                    str5 = "toString";
                    break;
                }
                str3 = "charAt";
                str4 = "hasOwnProperty";
                c10 = 65535;
                str5 = "toString";
            case 530542161:
                if (str.equals("substring")) {
                    c10 = '\n';
                    str3 = "charAt";
                    str4 = "hasOwnProperty";
                    str5 = "toString";
                    break;
                }
                str3 = "charAt";
                str4 = "hasOwnProperty";
                c10 = 65535;
                str5 = "toString";
            case 1094496948:
                if (str.equals("replace")) {
                    c10 = 6;
                    str3 = "charAt";
                    str4 = "hasOwnProperty";
                    str5 = "toString";
                    break;
                }
                str3 = "charAt";
                str4 = "hasOwnProperty";
                c10 = 65535;
                str5 = "toString";
            case 1943291465:
                if (str.equals("indexOf")) {
                    c10 = 3;
                    str3 = "charAt";
                    str4 = "hasOwnProperty";
                    str5 = "toString";
                    break;
                }
                str3 = "charAt";
                str4 = "hasOwnProperty";
                c10 = 65535;
                str5 = "toString";
            default:
                str3 = "charAt";
                str4 = "hasOwnProperty";
                c10 = 65535;
                str5 = "toString";
                break;
        }
        String str7 = str3;
        switch (c10) {
            case 0:
                zzh.zzj(str7, 1, list);
                int zza = list.size() > 0 ? (int) zzh.zza(zzgVar.zzb(list.get(0)).zzh().doubleValue()) : 0;
                String str8 = this.zza;
                if (zza >= 0 && zza < str8.length()) {
                    return new zzat(String.valueOf(str8.charAt(zza)));
                }
                return zzap.zzm;
            case 1:
                zzatVar = this;
                if (list.size() != 0) {
                    StringBuilder sb2 = new StringBuilder(zzatVar.zza);
                    for (int i13 = 0; i13 < list.size(); i13++) {
                        sb2.append(zzgVar.zzb(list.get(i13)).zzi());
                    }
                    return new zzat(sb2.toString());
                }
                return zzatVar;
            case 2:
                zzh.zzh(str4, 1, list);
                String str9 = this.zza;
                zzap zzb = zzgVar.zzb(list.get(0));
                if ("length".equals(zzb.zzi())) {
                    return zzap.zzk;
                }
                double doubleValue = zzb.zzh().doubleValue();
                return (doubleValue != Math.floor(doubleValue) || (i10 = (int) doubleValue) < 0 || i10 >= str9.length()) ? zzap.zzl : zzap.zzk;
            case 3:
                zzh.zzj("indexOf", 2, list);
                zzahVar = new zzah(Double.valueOf(this.zza.indexOf(list.size() > 0 ? zzgVar.zzb(list.get(0)).zzi() : "undefined", (int) zzh.zza(list.size() < 2 ? 0.0d : zzgVar.zzb(list.get(1)).zzh().doubleValue()))));
                return zzahVar;
            case 4:
                zzh.zzj("lastIndexOf", 2, list);
                String str10 = this.zza;
                String zzi = list.size() > 0 ? zzgVar.zzb(list.get(0)).zzi() : "undefined";
                return new zzah(Double.valueOf(str10.lastIndexOf(zzi, (int) (Double.isNaN(list.size() < 2 ? Double.NaN : zzgVar.zzb(list.get(1)).zzh().doubleValue()) ? Double.POSITIVE_INFINITY : zzh.zza(r3)))));
            case 5:
                zzh.zzj("match", 1, list);
                Matcher matcher = Pattern.compile(list.size() > 0 ? zzgVar.zzb(list.get(0)).zzi() : "").matcher(this.zza);
                return matcher.find() ? new zzae(Arrays.asList(new zzat(matcher.group()))) : zzap.zzg;
            case 6:
                zzatVar = this;
                zzh.zzj("replace", 2, list);
                zzap zzapVar = zzap.zzf;
                if (list.size() > 0) {
                    str6 = zzgVar.zzb(list.get(0)).zzi();
                    if (list.size() > 1) {
                        zzapVar = zzgVar.zzb(list.get(1));
                    }
                }
                String str11 = str6;
                String str12 = zzatVar.zza;
                int indexOf = str12.indexOf(str11);
                if (indexOf >= 0) {
                    if (zzapVar instanceof zzai) {
                        zzapVar = ((zzai) zzapVar).zza(zzgVar, Arrays.asList(new zzat(str11), new zzah(Double.valueOf(indexOf)), zzatVar));
                    }
                    String substring = str12.substring(0, indexOf);
                    String zzi2 = zzapVar.zzi();
                    String substring2 = str12.substring(indexOf + str11.length());
                    StringBuilder sb3 = new StringBuilder(String.valueOf(substring).length() + String.valueOf(zzi2).length() + String.valueOf(substring2).length());
                    sb3.append(substring);
                    sb3.append(zzi2);
                    sb3.append(substring2);
                    zzahVar = new zzat(sb3.toString());
                    return zzahVar;
                }
                return zzatVar;
            case 7:
                zzh.zzj("search", 1, list);
                if (Pattern.compile(list.size() > 0 ? zzgVar.zzb(list.get(0)).zzi() : "undefined").matcher(this.zza).find()) {
                    return new zzah(Double.valueOf(r0.start()));
                }
                return new zzah(Double.valueOf(-1.0d));
            case '\b':
                zzh.zzj("slice", 2, list);
                String str13 = this.zza;
                double zza2 = zzh.zza(list.size() > 0 ? zzgVar.zzb(list.get(0)).zzh().doubleValue() : ShadowDrawableWrapper.COS_45);
                if (zza2 < ShadowDrawableWrapper.COS_45) {
                    double length2 = str13.length();
                    Double.isNaN(length2);
                    min = Math.max(length2 + zza2, ShadowDrawableWrapper.COS_45);
                } else {
                    min = Math.min(zza2, str13.length());
                }
                int i14 = (int) min;
                double zza3 = zzh.zza(list.size() > 1 ? zzgVar.zzb(list.get(1)).zzh().doubleValue() : str13.length());
                if (zza3 < ShadowDrawableWrapper.COS_45) {
                    double length3 = str13.length();
                    Double.isNaN(length3);
                    min2 = Math.max(length3 + zza3, ShadowDrawableWrapper.COS_45);
                } else {
                    min2 = Math.min(zza3, str13.length());
                }
                zzatVar2 = new zzat(str13.substring(i14, Math.max(0, ((int) min2) - i14) + i14));
                return zzatVar2;
            case '\t':
                zzh.zzj("split", 2, list);
                String str14 = this.zza;
                if (str14.length() == 0) {
                    return new zzae(Arrays.asList(this));
                }
                ArrayList arrayList = new ArrayList();
                if (list.size() == 0) {
                    arrayList.add(this);
                } else {
                    String zzi3 = zzgVar.zzb(list.get(0)).zzi();
                    long zzd = list.size() > 1 ? zzh.zzd(zzgVar.zzb(list.get(1)).zzh().doubleValue()) : 2147483647L;
                    if (zzd == 0) {
                        return new zzae();
                    }
                    String[] split = str14.split(Pattern.quote(zzi3), ((int) zzd) + 1);
                    int length4 = split.length;
                    if (!zzi3.equals("") || length4 <= 0) {
                        i11 = length4;
                        z10 = false;
                    } else {
                        boolean equals = split[0].equals("");
                        i11 = length4 - 1;
                        if (!split[i11].equals("")) {
                            i11 = length4;
                        }
                        z10 = equals;
                    }
                    if (length4 > zzd) {
                        i11--;
                    }
                    for (int r02 = z10 ? 1 : 0; r02 < i11; r02++) {
                        arrayList.add(new zzat(split[r02]));
                    }
                }
                return new zzae(arrayList);
            case '\n':
                zzh.zzj("substring", 2, list);
                String str15 = this.zza;
                if (list.size() > 0) {
                    zzgVar2 = zzgVar;
                    i12 = (int) zzh.zza(zzgVar2.zzb(list.get(0)).zzh().doubleValue());
                } else {
                    zzgVar2 = zzgVar;
                    i12 = 0;
                }
                if (list.size() > 1) {
                    length = (int) zzh.zza(zzgVar2.zzb(list.get(1)).zzh().doubleValue());
                } else {
                    length = str15.length();
                }
                int min3 = Math.min(Math.max(i12, 0), str15.length());
                int min4 = Math.min(Math.max(length, 0), str15.length());
                zzatVar2 = new zzat(str15.substring(Math.min(min3, min4), Math.max(min3, min4)));
                return zzatVar2;
            case 11:
                zzh.zzh(str2, 0, list);
                return new zzat(this.zza.toUpperCase());
            case '\f':
                zzh.zzh("toLocaleLowerCase", 0, list);
                return new zzat(this.zza.toLowerCase());
            case '\r':
                zzh.zzh("toLowerCase", 0, list);
                return new zzat(this.zza.toLowerCase(Locale.ENGLISH));
            case 14:
                zzatVar = this;
                zzh.zzh(str5, 0, list);
                return zzatVar;
            case 15:
                zzh.zzh("toUpperCase", 0, list);
                return new zzat(this.zza.toUpperCase(Locale.ENGLISH));
            case 16:
                zzh.zzh("toUpperCase", 0, list);
                return new zzat(this.zza.trim());
            default:
                throw new IllegalArgumentException("Command not supported");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final zzap zzd() {
        return new zzat(this.zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Boolean zzg() {
        return Boolean.valueOf(!this.zza.isEmpty());
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Double zzh() {
        if (this.zza.isEmpty()) {
            return Double.valueOf(ShadowDrawableWrapper.COS_45);
        }
        try {
            return Double.valueOf(this.zza);
        } catch (NumberFormatException unused) {
            return Double.valueOf(Double.NaN);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final String zzi() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zzap
    public final Iterator<zzap> zzl() {
        return new zzar(this);
    }
}
