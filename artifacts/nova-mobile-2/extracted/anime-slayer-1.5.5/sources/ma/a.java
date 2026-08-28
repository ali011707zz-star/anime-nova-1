package ma;

import com.google.android.material.datepicker.UtcDates;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;

/* compiled from: ISO8601Utils.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public static final TimeZone f11063a = TimeZone.getTimeZone(UtcDates.UTC);

    public static boolean a(String str, int i10, char c10) {
        return i10 < str.length() && str.charAt(i10) == c10;
    }

    public static int b(String str, int i10) {
        while (i10 < str.length()) {
            char charAt = str.charAt(i10);
            if (charAt < '0' || charAt > '9') {
                return i10;
            }
            i10++;
        }
        return str.length();
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00cf A[Catch: IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x01bc, NumberFormatException -> 0x01be, IndexOutOfBoundsException -> 0x01c0, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x01bc, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0035, B:13:0x003b, B:18:0x0050, B:20:0x0060, B:21:0x0062, B:23:0x006e, B:24:0x0070, B:26:0x0076, B:30:0x0080, B:35:0x0090, B:37:0x0098, B:42:0x00c9, B:44:0x00cf, B:46:0x00d6, B:47:0x0183, B:52:0x00e0, B:53:0x00fb, B:54:0x00fc, B:57:0x0118, B:59:0x0125, B:62:0x012e, B:64:0x014d, B:67:0x015c, B:68:0x017e, B:70:0x0181, B:71:0x0107, B:72:0x01b4, B:73:0x01bb, B:74:0x00b0, B:75:0x00b3), top: B:2:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01b4 A[Catch: IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x01bc, NumberFormatException -> 0x01be, IndexOutOfBoundsException -> 0x01c0, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException -> 0x01bc, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0035, B:13:0x003b, B:18:0x0050, B:20:0x0060, B:21:0x0062, B:23:0x006e, B:24:0x0070, B:26:0x0076, B:30:0x0080, B:35:0x0090, B:37:0x0098, B:42:0x00c9, B:44:0x00cf, B:46:0x00d6, B:47:0x0183, B:52:0x00e0, B:53:0x00fb, B:54:0x00fc, B:57:0x0118, B:59:0x0125, B:62:0x012e, B:64:0x014d, B:67:0x015c, B:68:0x017e, B:70:0x0181, B:71:0x0107, B:72:0x01b4, B:73:0x01bb, B:74:0x00b0, B:75:0x00b3), top: B:2:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Date c(String str, ParsePosition parsePosition) throws ParseException {
        String str2;
        int i10;
        int i11;
        int i12;
        int i13;
        int length;
        TimeZone timeZone;
        char charAt;
        try {
            int index = parsePosition.getIndex();
            int i14 = index + 4;
            int d10 = d(str, index, i14);
            if (a(str, i14, '-')) {
                i14++;
            }
            int i15 = i14 + 2;
            int d11 = d(str, i14, i15);
            if (a(str, i15, '-')) {
                i15++;
            }
            int i16 = i15 + 2;
            int d12 = d(str, i15, i16);
            boolean a10 = a(str, i16, 'T');
            if (!a10 && str.length() <= i16) {
                GregorianCalendar gregorianCalendar = new GregorianCalendar(d10, d11 - 1, d12);
                parsePosition.setIndex(i16);
                return gregorianCalendar.getTime();
            }
            if (a10) {
                int i17 = i16 + 1;
                int i18 = i17 + 2;
                int d13 = d(str, i17, i18);
                if (a(str, i18, ':')) {
                    i18++;
                }
                int i19 = i18 + 2;
                int d14 = d(str, i18, i19);
                if (a(str, i19, ':')) {
                    i19++;
                }
                if (str.length() > i19 && (charAt = str.charAt(i19)) != 'Z' && charAt != '+' && charAt != '-') {
                    int i20 = i19 + 2;
                    i13 = d(str, i19, i20);
                    if (i13 > 59 && i13 < 63) {
                        i13 = 59;
                    }
                    if (a(str, i20, '.')) {
                        int i21 = i20 + 1;
                        int b10 = b(str, i21 + 1);
                        int min = Math.min(b10, i21 + 3);
                        int d15 = d(str, i21, min);
                        int i22 = min - i21;
                        if (i22 == 1) {
                            d15 *= 100;
                        } else if (i22 == 2) {
                            d15 *= 10;
                        }
                        i11 = d14;
                        i12 = d15;
                        i10 = d13;
                        i16 = b10;
                    } else {
                        i11 = d14;
                        i10 = d13;
                        i16 = i20;
                        i12 = 0;
                    }
                    if (str.length() <= i16) {
                        char charAt2 = str.charAt(i16);
                        if (charAt2 == 'Z') {
                            timeZone = f11063a;
                            length = i16 + 1;
                        } else {
                            if (charAt2 != '+' && charAt2 != '-') {
                                throw new IndexOutOfBoundsException("Invalid time zone indicator '" + charAt2 + "'");
                            }
                            String substring = str.substring(i16);
                            if (substring.length() < 5) {
                                substring = substring + "00";
                            }
                            length = i16 + substring.length();
                            if (!"+0000".equals(substring) && !"+00:00".equals(substring)) {
                                String str3 = "GMT" + substring;
                                TimeZone timeZone2 = TimeZone.getTimeZone(str3);
                                String id2 = timeZone2.getID();
                                if (!id2.equals(str3) && !id2.replace(":", "").equals(str3)) {
                                    throw new IndexOutOfBoundsException("Mismatching time zone indicator: " + str3 + " given, resolves to " + timeZone2.getID());
                                }
                                timeZone = timeZone2;
                            }
                            timeZone = f11063a;
                        }
                        GregorianCalendar gregorianCalendar2 = new GregorianCalendar(timeZone);
                        gregorianCalendar2.setLenient(false);
                        gregorianCalendar2.set(1, d10);
                        gregorianCalendar2.set(2, d11 - 1);
                        gregorianCalendar2.set(5, d12);
                        gregorianCalendar2.set(11, i10);
                        gregorianCalendar2.set(12, i11);
                        gregorianCalendar2.set(13, i13);
                        gregorianCalendar2.set(14, i12);
                        parsePosition.setIndex(length);
                        return gregorianCalendar2.getTime();
                    }
                    throw new IllegalArgumentException("No time zone indicator");
                }
                i11 = d14;
                i12 = 0;
                i10 = d13;
                i16 = i19;
            } else {
                i10 = 0;
                i11 = 0;
                i12 = 0;
            }
            i13 = 0;
            if (str.length() <= i16) {
            }
        } catch (IllegalArgumentException | IndexOutOfBoundsException | NumberFormatException e10) {
            if (str == null) {
                str2 = null;
            } else {
                str2 = '\"' + str + '\"';
            }
            String message = e10.getMessage();
            if (message == null || message.isEmpty()) {
                message = "(" + e10.getClass().getName() + ")";
            }
            ParseException parseException = new ParseException("Failed to parse date [" + str2 + "]: " + message, parsePosition.getIndex());
            parseException.initCause(e10);
            throw parseException;
        }
    }

    public static int d(String str, int i10, int i11) throws NumberFormatException {
        int i12;
        int i13;
        if (i10 < 0 || i11 > str.length() || i10 > i11) {
            throw new NumberFormatException(str);
        }
        if (i10 < i11) {
            i12 = i10 + 1;
            int digit = Character.digit(str.charAt(i10), 10);
            if (digit < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i10, i11));
            }
            i13 = -digit;
        } else {
            i12 = i10;
            i13 = 0;
        }
        while (i12 < i11) {
            int i14 = i12 + 1;
            int digit2 = Character.digit(str.charAt(i12), 10);
            if (digit2 < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i10, i11));
            }
            i13 = (i13 * 10) - digit2;
            i12 = i14;
        }
        return -i13;
    }
}
