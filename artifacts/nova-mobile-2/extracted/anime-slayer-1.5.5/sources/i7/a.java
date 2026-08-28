package i7;

import java.util.ArrayList;
import java.util.List;
import jc.l;
import p4.n;
import qc.u;

/* compiled from: QualityUtil.kt */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public static final a f7889a = new a();

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0005. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ArrayList<n> a(List<String> list, int i10) {
        l.f(list, "urls");
        switch (i10) {
            case 0:
                return wb.l.e(new n("المتوفرة", list.get(0)));
            case 1:
                return b(list);
            case 2:
                return e(list);
            case 3:
                return f(list);
            case 4:
                return g(list);
            case 5:
                return h(list);
            case 6:
                return i(list);
            case 7:
                return j(list);
            case 8:
                return k(list);
            case 9:
                return l(list);
            case 10:
                return c(list);
            case 11:
                return d(list);
            default:
                switch (i10) {
                    case 995:
                        return m(list);
                    case 996:
                        break;
                    case 997:
                        break;
                    case 998:
                        break;
                    case 999:
                        break;
                    default:
                        throw new IllegalStateException(l.m("Unsupported type: ", Integer.valueOf(i10)));
                }
        }
    }

    public final ArrayList<n> b(List<String> list) {
        int size = list.size();
        if (size == 1) {
            return wb.l.e(new n("منخفضة جدا", list.get(0)));
        }
        if (size == 2) {
            return wb.l.e(new n("منخفضة", list.get(0)), new n("منخفضة جدا", list.get(1)));
        }
        if (size != 3) {
            return wb.l.e(new n("عالية جدا", list.get(0)), new n("عالية", list.get(1)), new n("منخفضة", list.get(2)), new n("منخفضة جدا", list.get(3)));
        }
        return wb.l.e(new n("عالية", list.get(0)), new n("منخفضة", list.get(1)), new n("منخفضة جدا", list.get(2)));
    }

    public final ArrayList<n> c(List<String> list) {
        return list.size() == 1 ? wb.l.e(new n("متوسطة", list.get(0))) : wb.l.e(new n("عالية", list.get(0)), new n("متوسطة", list.get(1)));
    }

    public final ArrayList<n> d(List<String> list) {
        return list.size() == 1 ? wb.l.e(new n("منخفضة", list.get(0))) : wb.l.e(new n("عالية", list.get(0)), new n("منخفضة", list.get(1)));
    }

    public final ArrayList<n> e(List<String> list) {
        int size = list.size();
        if (size == 1) {
            return wb.l.e(new n("عالية", list.get(0)));
        }
        if (size == 2) {
            return wb.l.e(new n("منخفضة جدا", list.get(0)), new n("منخفضة جدا جدا", list.get(1)));
        }
        if (size == 3) {
            return wb.l.e(new n("منخفضة", list.get(0)), new n("منخفضة جدا", list.get(1)), new n("منخفضة جدا جدا", list.get(2)));
        }
        if (size != 4) {
            return wb.l.e(new n("عالية", list.get(0)), new n("متوسطة", list.get(1)), new n("منخفضة", list.get(2)), new n("منخفضة جدا", list.get(3)), new n("منخفضة جدا جدا", list.get(4)));
        }
        return wb.l.e(new n("متوسطة", list.get(0)), new n("منخفضة", list.get(1)), new n("منخفضة جدا", list.get(2)), new n("منخفضة جدا جدا", list.get(3)));
    }

    public final ArrayList<n> f(List<String> list) {
        ArrayList<n> arrayList = new ArrayList<>();
        for (String str : list) {
            if (u.C(str, "itag=37", false, 2, null)) {
                arrayList.add(new n("عالية جدا", str));
            } else if (u.C(str, "itag=22", false, 2, null)) {
                arrayList.add(new n("عالية", str));
            } else if (u.C(str, "itag=59", false, 2, null)) {
                arrayList.add(new n("متوسطة", str));
            } else if (u.C(str, "itag=18", false, 2, null)) {
                arrayList.add(new n("منخفضة", str));
            }
        }
        return arrayList;
    }

    public final ArrayList<n> g(List<String> list) {
        return list.size() == 1 ? wb.l.e(new n("عالية", list.get(0))) : wb.l.e(new n("عالية", list.get(0)), new n("منخفضة", list.get(1)));
    }

    public final ArrayList<n> h(List<String> list) {
        return wb.l.e(new n("عالية", list.get(0)));
    }

    public final ArrayList<n> i(List<String> list) {
        int size = list.size();
        if (size == 1) {
            return wb.l.e(new n("منخفضة", list.get(0)));
        }
        if (size != 2) {
            return wb.l.e(new n("عالية", list.get(0)), new n("متوسطة", list.get(1)), new n("منخفضة", list.get(2)));
        }
        return wb.l.e(new n("متوسطة", list.get(0)), new n("منخفضة", list.get(1)));
    }

    public final ArrayList<n> j(List<String> list) {
        return list.size() == 1 ? wb.l.e(new n("عالية", list.get(0))) : wb.l.e(new n("عالية", list.get(0)), new n("متوسطة", list.get(1)));
    }

    public final ArrayList<n> k(List<String> list) {
        return list.size() == 1 ? wb.l.e(new n("متوسطة", list.get(0))) : wb.l.e(new n("متوسطة", list.get(0)), new n("منخفضة", list.get(1)));
    }

    public final ArrayList<n> l(List<String> list) {
        int size = list.size();
        if (size == 1) {
            return wb.l.e(new n("منخفضة جدا", list.get(0)));
        }
        if (size == 2) {
            return wb.l.e(new n("منخفضة", list.get(0)), new n("منخفضة جدا", list.get(1)));
        }
        if (size != 3) {
            return wb.l.e(new n("عالية", list.get(0)), new n("متوسطة", list.get(1)), new n("منخفضة", list.get(2)), new n("منخفضة جدا", list.get(3)));
        }
        return wb.l.e(new n("متوسطة", list.get(0)), new n("منخفضة", list.get(1)), new n("منخفضة جدا", list.get(2)));
    }

    public final ArrayList<n> m(List<String> list) {
        ArrayList<n> arrayList = new ArrayList<>();
        for (String str : list) {
            if (u.C(str, "/1080/", false, 2, null)) {
                arrayList.add(new n("عالية جدا", str));
            } else if (u.C(str, "/720/", false, 2, null)) {
                arrayList.add(new n("عالية", str));
            } else if (u.C(str, "/480/", false, 2, null)) {
                arrayList.add(new n("متوسطة", str));
            } else if (u.C(str, "/360/", false, 2, null)) {
                arrayList.add(new n("منخفضة", str));
            }
        }
        return arrayList;
    }
}
