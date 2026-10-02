package com.google.android.gms.common.server.response;

import androidx.annotation.RecentlyNonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.shadow.ShadowDrawableWrapper;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;
import sb.b;

/* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
@ShowFirstParty
@KeepForSdk
/* loaded from: classes.dex */
public class FastParser<T extends FastJsonResponse> {
    private static final char[] zaf = {'u', 'l', 'l'};
    private static final char[] zag = {'r', 'u', 'e'};
    private static final char[] zah = {'r', 'u', 'e', '\"'};
    private static final char[] zai = {'a', 'l', 's', 'e'};
    private static final char[] zaj = {'a', 'l', 's', 'e', '\"'};
    private static final char[] zak = {'\n'};
    private static final zai<Integer> zam = new zaa();
    private static final zai<Long> zan = new zab();
    private static final zai<Float> zao = new zac();
    private static final zai<Double> zap = new zad();
    private static final zai<Boolean> zaq = new zae();
    private static final zai<String> zar = new zaf();
    private static final zai<BigInteger> zas = new zag();
    private static final zai<BigDecimal> zat = new zah();
    private final char[] zaa = new char[1];
    private final char[] zab = new char[32];
    private final char[] zac = new char[RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE];
    private final StringBuilder zad = new StringBuilder(32);
    private final StringBuilder zae = new StringBuilder(RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE);
    private final Stack<Integer> zal = new Stack<>();

    /* compiled from: com.google.android.gms:play-services-base@@17.6.0 */
    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes.dex */
    public static class ParseException extends Exception {
        public ParseException(@RecentlyNonNull String str) {
            super(str);
        }

        public ParseException(@RecentlyNonNull String str, @RecentlyNonNull Throwable th) {
            super("Error instantiating inner object", th);
        }

        public ParseException(@RecentlyNonNull Throwable th) {
            super(th);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0031, code lost:
    
        throw new com.google.android.gms.common.server.response.FastParser.ParseException("Unexpected control character while reading string");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static final String zaA(BufferedReader bufferedReader, char[] cArr, StringBuilder sb2, char[] cArr2) throws ParseException, IOException {
        sb2.setLength(0);
        bufferedReader.mark(cArr.length);
        boolean z10 = false;
        boolean z11 = false;
        loop0: while (true) {
            int read = bufferedReader.read(cArr);
            if (read != -1) {
                for (int i10 = 0; i10 < read; i10++) {
                    char c10 = cArr[i10];
                    if (Character.isISOControl(c10)) {
                        if (cArr2 == null) {
                            break loop0;
                        }
                        for (char c11 : cArr2) {
                            if (c11 != c10) {
                            }
                        }
                        break loop0;
                    }
                    if (c10 == '\"') {
                        if (!z11) {
                            sb2.append(cArr, 0, i10);
                            bufferedReader.reset();
                            bufferedReader.skip(i10 + 1);
                            if (z10) {
                                return JsonUtils.unescapeString(sb2.toString());
                            }
                            return sb2.toString();
                        }
                    } else if (c10 == '\\') {
                        z11 = !z11;
                        z10 = true;
                    }
                    z11 = false;
                }
                sb2.append(cArr, 0, read);
                bufferedReader.mark(cArr.length);
            } else {
                throw new ParseException("Unexpected EOF while parsing string");
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean zai(BufferedReader bufferedReader, FastJsonResponse fastJsonResponse) throws ParseException, IOException {
        HashMap hashMap;
        Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = fastJsonResponse.getFieldMappings();
        String zaj2 = zaj(bufferedReader);
        if (zaj2 != null) {
            while (zaj2 != null) {
                FastJsonResponse.Field<?, ?> field = fieldMappings.get(zaj2);
                if (field == null) {
                    zaj2 = zak(bufferedReader);
                } else {
                    this.zal.push(4);
                    int i10 = field.zaa;
                    switch (i10) {
                        case 0:
                            if (field.zab) {
                                fastJsonResponse.zab(field, zam(bufferedReader, zam));
                                break;
                            } else {
                                fastJsonResponse.zaa(field, zao(bufferedReader));
                                break;
                            }
                        case 1:
                            if (field.zab) {
                                fastJsonResponse.zad(field, zam(bufferedReader, zas));
                                break;
                            } else {
                                fastJsonResponse.zac(field, zaq(bufferedReader));
                                break;
                            }
                        case 2:
                            if (field.zab) {
                                fastJsonResponse.zaf(field, zam(bufferedReader, zan));
                                break;
                            } else {
                                fastJsonResponse.zae(field, zap(bufferedReader));
                                break;
                            }
                        case 3:
                            if (field.zab) {
                                fastJsonResponse.zah(field, zam(bufferedReader, zao));
                                break;
                            } else {
                                fastJsonResponse.zag(field, zas(bufferedReader));
                                break;
                            }
                        case 4:
                            if (field.zab) {
                                fastJsonResponse.zaj(field, zam(bufferedReader, zap));
                                break;
                            } else {
                                fastJsonResponse.zai(field, zat(bufferedReader));
                                break;
                            }
                        case 5:
                            if (field.zab) {
                                fastJsonResponse.zal(field, zam(bufferedReader, zat));
                                break;
                            } else {
                                fastJsonResponse.zak(field, zau(bufferedReader));
                                break;
                            }
                        case 6:
                            if (field.zab) {
                                fastJsonResponse.zan(field, zam(bufferedReader, zaq));
                                break;
                            } else {
                                fastJsonResponse.zam(field, zar(bufferedReader, false));
                                break;
                            }
                        case 7:
                            if (field.zab) {
                                fastJsonResponse.zap(field, zam(bufferedReader, zar));
                                break;
                            } else {
                                fastJsonResponse.zao(field, zal(bufferedReader));
                                break;
                            }
                        case 8:
                            fastJsonResponse.zaq(field, Base64Utils.decode(zan(bufferedReader, this.zac, this.zae, zak)));
                            break;
                        case 9:
                            fastJsonResponse.zaq(field, Base64Utils.decodeUrlSafe(zan(bufferedReader, this.zac, this.zae, zak)));
                            break;
                        case 10:
                            char zaw = zaw(bufferedReader);
                            if (zaw == 'n') {
                                zay(bufferedReader, zaf);
                                hashMap = null;
                            } else if (zaw == '{') {
                                this.zal.push(1);
                                hashMap = new HashMap();
                                while (true) {
                                    char zaw2 = zaw(bufferedReader);
                                    if (zaw2 == 0) {
                                        throw new ParseException("Unexpected EOF");
                                    }
                                    if (zaw2 == '\"') {
                                        String zaA = zaA(bufferedReader, this.zab, this.zad, null);
                                        if (zaw(bufferedReader) != ':') {
                                            String valueOf = String.valueOf(zaA);
                                            throw new ParseException(valueOf.length() != 0 ? "No map value found for key ".concat(valueOf) : new String("No map value found for key "));
                                        }
                                        if (zaw(bufferedReader) != '\"') {
                                            String valueOf2 = String.valueOf(zaA);
                                            throw new ParseException(valueOf2.length() != 0 ? "Expected String value for key ".concat(valueOf2) : new String("Expected String value for key "));
                                        }
                                        hashMap.put(zaA, zaA(bufferedReader, this.zab, this.zad, null));
                                        char zaw3 = zaw(bufferedReader);
                                        if (zaw3 != ',') {
                                            if (zaw3 == '}') {
                                                zaz(1);
                                            } else {
                                                StringBuilder sb2 = new StringBuilder(48);
                                                sb2.append("Unexpected character while parsing string map: ");
                                                sb2.append(zaw3);
                                                throw new ParseException(sb2.toString());
                                            }
                                        }
                                    } else if (zaw2 == '}') {
                                        zaz(1);
                                    }
                                }
                            } else {
                                throw new ParseException("Expected start of a map object");
                            }
                            fastJsonResponse.zar(field, hashMap);
                            break;
                        case 11:
                            if (field.zab) {
                                char zaw4 = zaw(bufferedReader);
                                if (zaw4 == 'n') {
                                    zay(bufferedReader, zaf);
                                    fastJsonResponse.addConcreteTypeArrayInternal(field, field.zae, null);
                                    break;
                                } else {
                                    this.zal.push(5);
                                    if (zaw4 == '[') {
                                        fastJsonResponse.addConcreteTypeArrayInternal(field, field.zae, zav(bufferedReader, field));
                                        break;
                                    } else {
                                        throw new ParseException("Expected array start");
                                    }
                                }
                            } else {
                                char zaw5 = zaw(bufferedReader);
                                if (zaw5 == 'n') {
                                    zay(bufferedReader, zaf);
                                    fastJsonResponse.addConcreteTypeInternal(field, field.zae, null);
                                    break;
                                } else {
                                    this.zal.push(1);
                                    if (zaw5 == '{') {
                                        try {
                                            FastJsonResponse zaf2 = field.zaf();
                                            zai(bufferedReader, zaf2);
                                            fastJsonResponse.addConcreteTypeInternal(field, field.zae, zaf2);
                                            break;
                                        } catch (IllegalAccessException e10) {
                                            throw new ParseException("Error instantiating inner object", e10);
                                        } catch (InstantiationException e11) {
                                            throw new ParseException("Error instantiating inner object", e11);
                                        }
                                    } else {
                                        throw new ParseException("Expected start of object");
                                    }
                                }
                            }
                        default:
                            StringBuilder sb3 = new StringBuilder(30);
                            sb3.append("Invalid field type ");
                            sb3.append(i10);
                            throw new ParseException(sb3.toString());
                    }
                    zaz(4);
                    zaz(2);
                    char zaw6 = zaw(bufferedReader);
                    if (zaw6 == ',') {
                        zaj2 = zaj(bufferedReader);
                    } else {
                        if (zaw6 != '}') {
                            StringBuilder sb4 = new StringBuilder(55);
                            sb4.append("Expected end of object or field separator, but found: ");
                            sb4.append(zaw6);
                            throw new ParseException(sb4.toString());
                        }
                        zaj2 = null;
                    }
                }
            }
            zaz(1);
            return true;
        }
        zaz(1);
        return false;
    }

    private final String zaj(BufferedReader bufferedReader) throws ParseException, IOException {
        this.zal.push(2);
        char zaw = zaw(bufferedReader);
        if (zaw == '\"') {
            this.zal.push(3);
            String zaA = zaA(bufferedReader, this.zab, this.zad, null);
            zaz(3);
            if (zaw(bufferedReader) == ':') {
                return zaA;
            }
            throw new ParseException("Expected key/value separator");
        }
        if (zaw == ']') {
            zaz(2);
            zaz(1);
            zaz(5);
            return null;
        }
        if (zaw == '}') {
            zaz(2);
            return null;
        }
        StringBuilder sb2 = new StringBuilder(19);
        sb2.append("Unexpected token: ");
        sb2.append(zaw);
        throw new ParseException(sb2.toString());
    }

    private final String zak(BufferedReader bufferedReader) throws ParseException, IOException {
        bufferedReader.mark(RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE);
        char zaw = zaw(bufferedReader);
        int i10 = 1;
        if (zaw == '\"') {
            if (bufferedReader.read(this.zaa) != -1) {
                char c10 = this.zaa[0];
                boolean z10 = false;
                do {
                    if (c10 == '\"') {
                        if (z10) {
                            c10 = '\"';
                            z10 = true;
                        }
                    }
                    z10 = c10 == '\\' ? !z10 : false;
                    if (bufferedReader.read(this.zaa) != -1) {
                        c10 = this.zaa[0];
                    } else {
                        throw new ParseException("Unexpected EOF while parsing string");
                    }
                } while (!Character.isISOControl(c10));
                throw new ParseException("Unexpected control character while reading string");
            }
            throw new ParseException("Unexpected EOF while parsing string");
        }
        if (zaw == ',') {
            throw new ParseException("Missing value");
        }
        if (zaw == '[') {
            this.zal.push(5);
            bufferedReader.mark(32);
            if (zaw(bufferedReader) == ']') {
                zaz(5);
            } else {
                bufferedReader.reset();
                boolean z11 = false;
                loop1: while (true) {
                    boolean z12 = false;
                    while (i10 > 0) {
                        char zaw2 = zaw(bufferedReader);
                        if (zaw2 != 0) {
                            if (Character.isISOControl(zaw2)) {
                                throw new ParseException("Unexpected control character while reading array");
                            }
                            if (zaw2 == '\"') {
                                if (!z12) {
                                    z11 = !z11;
                                }
                                zaw2 = '\"';
                            }
                            if (zaw2 == '[') {
                                if (!z11) {
                                    i10++;
                                }
                                zaw2 = '[';
                            }
                            if (zaw2 == ']' && !z11) {
                                i10--;
                            }
                            if (zaw2 == '\\' && z11) {
                                z12 = !z12;
                            }
                        } else {
                            throw new ParseException("Unexpected EOF while parsing array");
                        }
                    }
                    zaz(5);
                    break loop1;
                }
            }
        } else if (zaw != '{') {
            bufferedReader.reset();
            zax(bufferedReader, this.zac);
        } else {
            this.zal.push(1);
            bufferedReader.mark(32);
            char zaw3 = zaw(bufferedReader);
            if (zaw3 == '}') {
                zaz(1);
            } else if (zaw3 == '\"') {
                bufferedReader.reset();
                zaj(bufferedReader);
                do {
                } while (zak(bufferedReader) != null);
                zaz(1);
            } else {
                StringBuilder sb2 = new StringBuilder(18);
                sb2.append("Unexpected token ");
                sb2.append(zaw3);
                throw new ParseException(sb2.toString());
            }
        }
        char zaw4 = zaw(bufferedReader);
        if (zaw4 == ',') {
            zaz(2);
            return zaj(bufferedReader);
        }
        if (zaw4 == '}') {
            zaz(2);
            return null;
        }
        StringBuilder sb3 = new StringBuilder(18);
        sb3.append("Unexpected token ");
        sb3.append(zaw4);
        throw new ParseException(sb3.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String zal(BufferedReader bufferedReader) throws ParseException, IOException {
        return zan(bufferedReader, this.zab, this.zad, null);
    }

    private final <O> ArrayList<O> zam(BufferedReader bufferedReader, zai<O> zaiVar) throws ParseException, IOException {
        char zaw = zaw(bufferedReader);
        if (zaw == 'n') {
            zay(bufferedReader, zaf);
            return null;
        }
        if (zaw == '[') {
            this.zal.push(5);
            ArrayList<O> arrayList = new ArrayList<>();
            while (true) {
                bufferedReader.mark(RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE);
                char zaw2 = zaw(bufferedReader);
                if (zaw2 == 0) {
                    throw new ParseException("Unexpected EOF");
                }
                if (zaw2 != ',') {
                    if (zaw2 != ']') {
                        bufferedReader.reset();
                        arrayList.add(zaiVar.zaa(this, bufferedReader));
                    } else {
                        zaz(5);
                        return arrayList;
                    }
                }
            }
        } else {
            throw new ParseException("Expected start of array");
        }
    }

    private final String zan(BufferedReader bufferedReader, char[] cArr, StringBuilder sb2, char[] cArr2) throws ParseException, IOException {
        char zaw = zaw(bufferedReader);
        if (zaw == '\"') {
            return zaA(bufferedReader, cArr, sb2, cArr2);
        }
        if (zaw == 'n') {
            zay(bufferedReader, zaf);
            return null;
        }
        throw new ParseException("Expected string");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int zao(BufferedReader bufferedReader) throws ParseException, IOException {
        int i10;
        int i11;
        int zax = zax(bufferedReader, this.zac);
        if (zax == 0) {
            return 0;
        }
        char[] cArr = this.zac;
        if (zax <= 0) {
            throw new ParseException("No number to parse");
        }
        char c10 = cArr[0];
        int i12 = c10 == '-' ? Integer.MIN_VALUE : -2147483647;
        int i13 = c10 == '-' ? 1 : 0;
        if (i13 < zax) {
            i10 = i13 + 1;
            int digit = Character.digit(cArr[i13], 10);
            if (digit < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            i11 = -digit;
        } else {
            i10 = i13;
            i11 = 0;
        }
        while (i10 < zax) {
            int i14 = i10 + 1;
            int digit2 = Character.digit(cArr[i10], 10);
            if (digit2 < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            if (i11 < -214748364) {
                throw new ParseException("Number too large");
            }
            int i15 = i11 * 10;
            if (i15 < i12 + digit2) {
                throw new ParseException("Number too large");
            }
            i11 = i15 - digit2;
            i10 = i14;
        }
        if (i13 == 0) {
            return -i11;
        }
        if (i10 > 1) {
            return i11;
        }
        throw new ParseException("No digits to parse");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long zap(BufferedReader bufferedReader) throws ParseException, IOException {
        long j10;
        int i10;
        int zax = zax(bufferedReader, this.zac);
        if (zax == 0) {
            return 0L;
        }
        char[] cArr = this.zac;
        if (zax <= 0) {
            throw new ParseException("No number to parse");
        }
        char c10 = cArr[0];
        long j11 = c10 == '-' ? Long.MIN_VALUE : -9223372036854775807L;
        int i11 = c10 == '-' ? 1 : 0;
        if (i11 < zax) {
            i10 = i11 + 1;
            int digit = Character.digit(cArr[i11], 10);
            if (digit < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            j10 = -digit;
        } else {
            j10 = 0;
            i10 = i11;
        }
        while (i10 < zax) {
            int i12 = i10 + 1;
            int digit2 = Character.digit(cArr[i10], 10);
            if (digit2 < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            if (j10 < -922337203685477580L) {
                throw new ParseException("Number too large");
            }
            long j12 = j10 * 10;
            long j13 = digit2;
            if (j12 < j11 + j13) {
                throw new ParseException("Number too large");
            }
            j10 = j12 - j13;
            i10 = i12;
        }
        if (i11 == 0) {
            return -j10;
        }
        if (i10 > 1) {
            return j10;
        }
        throw new ParseException("No digits to parse");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BigInteger zaq(BufferedReader bufferedReader) throws ParseException, IOException {
        int zax = zax(bufferedReader, this.zac);
        if (zax == 0) {
            return null;
        }
        return new BigInteger(new String(this.zac, 0, zax));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zar(BufferedReader bufferedReader, boolean z10) throws ParseException, IOException {
        char[] cArr;
        char zaw = zaw(bufferedReader);
        if (zaw == '\"') {
            if (!z10) {
                return zar(bufferedReader, true);
            }
            throw new ParseException("No boolean value found in string");
        }
        if (zaw == 'f') {
            if (z10) {
                cArr = zaj;
            } else {
                cArr = zai;
            }
            zay(bufferedReader, cArr);
            return false;
        }
        if (zaw == 'n') {
            zay(bufferedReader, zaf);
            return false;
        }
        if (zaw == 't') {
            zay(bufferedReader, z10 ? zah : zag);
            return true;
        }
        StringBuilder sb2 = new StringBuilder(19);
        sb2.append("Unexpected token: ");
        sb2.append(zaw);
        throw new ParseException(sb2.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float zas(BufferedReader bufferedReader) throws ParseException, IOException {
        int zax = zax(bufferedReader, this.zac);
        return zax == 0 ? StaticLayoutBuilderCompat.DEFAULT_LINE_SPACING_ADD : Float.parseFloat(new String(this.zac, 0, zax));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final double zat(BufferedReader bufferedReader) throws ParseException, IOException {
        int zax = zax(bufferedReader, this.zac);
        return zax == 0 ? ShadowDrawableWrapper.COS_45 : Double.parseDouble(new String(this.zac, 0, zax));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BigDecimal zau(BufferedReader bufferedReader) throws ParseException, IOException {
        int zax = zax(bufferedReader, this.zac);
        if (zax == 0) {
            return null;
        }
        return new BigDecimal(new String(this.zac, 0, zax));
    }

    private final <T extends FastJsonResponse> ArrayList<T> zav(BufferedReader bufferedReader, FastJsonResponse.Field<?, ?> field) throws ParseException, IOException {
        b.a aVar = (ArrayList<T>) new ArrayList();
        char zaw = zaw(bufferedReader);
        if (zaw == ']') {
            zaz(5);
            return aVar;
        }
        if (zaw == 'n') {
            zay(bufferedReader, zaf);
            zaz(5);
            return null;
        }
        if (zaw == '{') {
            this.zal.push(1);
            while (true) {
                try {
                    FastJsonResponse zaf2 = field.zaf();
                    if (!zai(bufferedReader, zaf2)) {
                        return aVar;
                    }
                    aVar.add(zaf2);
                    char zaw2 = zaw(bufferedReader);
                    if (zaw2 != ',') {
                        if (zaw2 == ']') {
                            zaz(5);
                            return aVar;
                        }
                        StringBuilder sb2 = new StringBuilder(19);
                        sb2.append("Unexpected token: ");
                        sb2.append(zaw2);
                        throw new ParseException(sb2.toString());
                    }
                    if (zaw(bufferedReader) == '{') {
                        this.zal.push(1);
                    } else {
                        throw new ParseException("Expected start of next object in array");
                    }
                } catch (IllegalAccessException e10) {
                    throw new ParseException("Error instantiating inner object", e10);
                } catch (InstantiationException e11) {
                    throw new ParseException("Error instantiating inner object", e11);
                }
            }
        } else {
            StringBuilder sb3 = new StringBuilder(19);
            sb3.append("Unexpected token: ");
            sb3.append(zaw);
            throw new ParseException(sb3.toString());
        }
    }

    private final char zaw(BufferedReader bufferedReader) throws ParseException, IOException {
        if (bufferedReader.read(this.zaa) == -1) {
            return (char) 0;
        }
        while (Character.isWhitespace(this.zaa[0])) {
            if (bufferedReader.read(this.zaa) == -1) {
                return (char) 0;
            }
        }
        return this.zaa[0];
    }

    private final int zax(BufferedReader bufferedReader, char[] cArr) throws ParseException, IOException {
        int i10;
        char zaw = zaw(bufferedReader);
        if (zaw == 0) {
            throw new ParseException("Unexpected EOF");
        }
        if (zaw == ',') {
            throw new ParseException("Missing value");
        }
        if (zaw == 'n') {
            zay(bufferedReader, zaf);
            return 0;
        }
        bufferedReader.mark(RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE);
        if (zaw == '\"') {
            i10 = 0;
            boolean z10 = false;
            while (i10 < cArr.length && bufferedReader.read(cArr, i10, 1) != -1) {
                char c10 = cArr[i10];
                if (Character.isISOControl(c10)) {
                    throw new ParseException("Unexpected control character while reading string");
                }
                if (c10 == '\"') {
                    if (!z10) {
                        bufferedReader.reset();
                        bufferedReader.skip(i10 + 1);
                        return i10;
                    }
                } else if (c10 == '\\') {
                    z10 = !z10;
                    i10++;
                }
                z10 = false;
                i10++;
            }
        } else {
            cArr[0] = zaw;
            i10 = 1;
            while (i10 < cArr.length && bufferedReader.read(cArr, i10, 1) != -1) {
                char c11 = cArr[i10];
                if (c11 == '}' || c11 == ',' || Character.isWhitespace(c11) || cArr[i10] == ']') {
                    bufferedReader.reset();
                    bufferedReader.skip(i10 - 1);
                    cArr[i10] = 0;
                    return i10;
                }
                i10++;
            }
        }
        if (i10 == cArr.length) {
            throw new ParseException("Absurdly long value");
        }
        throw new ParseException("Unexpected EOF");
    }

    private final void zay(BufferedReader bufferedReader, char[] cArr) throws ParseException, IOException {
        int i10 = 0;
        while (true) {
            int length = cArr.length;
            if (i10 >= length) {
                return;
            }
            int read = bufferedReader.read(this.zab, 0, length - i10);
            if (read == -1) {
                throw new ParseException("Unexpected EOF");
            }
            for (int i11 = 0; i11 < read; i11++) {
                if (cArr[i11 + i10] != this.zab[i11]) {
                    throw new ParseException("Unexpected character");
                }
            }
            i10 += read;
        }
    }

    private final void zaz(int i10) throws ParseException {
        if (!this.zal.isEmpty()) {
            int intValue = this.zal.pop().intValue();
            if (intValue == i10) {
                return;
            }
            StringBuilder sb2 = new StringBuilder(46);
            sb2.append("Expected state ");
            sb2.append(i10);
            sb2.append(" but had ");
            sb2.append(intValue);
            throw new ParseException(sb2.toString());
        }
        StringBuilder sb3 = new StringBuilder(46);
        sb3.append("Expected state ");
        sb3.append(i10);
        sb3.append(" but had empty stack");
        throw new ParseException(sb3.toString());
    }

    @KeepForSdk
    public void parse(@RecentlyNonNull InputStream inputStream, @RecentlyNonNull T t10) throws ParseException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream), RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE);
        try {
            try {
                this.zal.push(0);
                char zaw = zaw(bufferedReader);
                if (zaw != 0) {
                    if (zaw == '[') {
                        this.zal.push(5);
                        Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = t10.getFieldMappings();
                        if (fieldMappings.size() == 1) {
                            FastJsonResponse.Field<?, ?> value = fieldMappings.entrySet().iterator().next().getValue();
                            t10.addConcreteTypeArrayInternal(value, value.zae, zav(bufferedReader, value));
                        } else {
                            throw new ParseException("Object array response class must have a single Field");
                        }
                    } else if (zaw == '{') {
                        this.zal.push(1);
                        zai(bufferedReader, t10);
                    } else {
                        StringBuilder sb2 = new StringBuilder(19);
                        sb2.append("Unexpected token: ");
                        sb2.append(zaw);
                        throw new ParseException(sb2.toString());
                    }
                    zaz(0);
                    try {
                        bufferedReader.close();
                        return;
                    } catch (IOException unused) {
                        return;
                    }
                }
                throw new ParseException("No data to parse");
            } catch (IOException e10) {
                throw new ParseException(e10);
            }
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (IOException unused2) {
            }
            throw th;
        }
    }
}
