package m2;

import android.net.Uri;
import d2.d;
import d2.u;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Iterator;

/* compiled from: WorkTypeConverters.java */
/* loaded from: classes.dex */
public class v {

    /* compiled from: WorkTypeConverters.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f10878a;

        /* renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f10879b;

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f10880c;

        static {
            int[] iArr = new int[d2.m.values().length];
            f10880c = iArr;
            try {
                iArr[d2.m.NOT_REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10880c[d2.m.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f10880c[d2.m.UNMETERED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f10880c[d2.m.NOT_ROAMING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f10880c[d2.m.METERED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[d2.a.values().length];
            f10879b = iArr2;
            try {
                iArr2[d2.a.EXPONENTIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f10879b[d2.a.LINEAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[u.a.values().length];
            f10878a = iArr3;
            try {
                iArr3[u.a.ENQUEUED.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f10878a[u.a.RUNNING.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f10878a[u.a.SUCCEEDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f10878a[u.a.FAILED.ordinal()] = 4;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f10878a[u.a.BLOCKED.ordinal()] = 5;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f10878a[u.a.CANCELLED.ordinal()] = 6;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    public static int a(d2.a aVar) {
        int i10 = a.f10879b[aVar.ordinal()];
        if (i10 == 1) {
            return 0;
        }
        if (i10 == 2) {
            return 1;
        }
        throw new IllegalArgumentException("Could not convert " + aVar + " to int");
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x005a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static d2.d b(byte[] bArr) {
        ObjectInputStream objectInputStream;
        Throwable th;
        IOException e10;
        d2.d dVar = new d2.d();
        if (bArr == null) {
            return dVar;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            try {
                objectInputStream = new ObjectInputStream(byteArrayInputStream);
                try {
                    try {
                        for (int readInt = objectInputStream.readInt(); readInt > 0; readInt--) {
                            dVar.a(Uri.parse(objectInputStream.readUTF()), objectInputStream.readBoolean());
                        }
                        try {
                            objectInputStream.close();
                        } catch (IOException e11) {
                            e11.printStackTrace();
                        }
                        byteArrayInputStream.close();
                    } catch (IOException e12) {
                        e10 = e12;
                        e10.printStackTrace();
                        if (objectInputStream != null) {
                            try {
                                objectInputStream.close();
                            } catch (IOException e13) {
                                e13.printStackTrace();
                            }
                        }
                        byteArrayInputStream.close();
                        return dVar;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (objectInputStream != null) {
                        try {
                            objectInputStream.close();
                        } catch (IOException e14) {
                            e14.printStackTrace();
                        }
                    }
                    try {
                        byteArrayInputStream.close();
                        throw th;
                    } catch (IOException e15) {
                        e15.printStackTrace();
                        throw th;
                    }
                }
            } catch (IOException e16) {
                e16.printStackTrace();
            }
        } catch (IOException e17) {
            objectInputStream = null;
            e10 = e17;
        } catch (Throwable th3) {
            objectInputStream = null;
            th = th3;
            if (objectInputStream != null) {
            }
            byteArrayInputStream.close();
            throw th;
        }
        return dVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x0067 -> B:18:0x006a). Please report as a decompilation issue!!! */
    public static byte[] c(d2.d dVar) {
        ObjectOutputStream objectOutputStream;
        boolean hasNext;
        ObjectOutputStream objectOutputStream2 = null;
        ObjectOutputStream objectOutputStream3 = null;
        objectOutputStream2 = null;
        if (dVar.c() == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                try {
                    objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                } catch (Throwable th) {
                    th = th;
                }
            } catch (IOException e10) {
                e = e10;
            }
        } catch (IOException e11) {
            e11.printStackTrace();
            objectOutputStream2 = objectOutputStream2;
        }
        try {
            objectOutputStream.writeInt(dVar.c());
            Iterator<d.a> it2 = dVar.b().iterator();
            while (true) {
                hasNext = it2.hasNext();
                if (hasNext != 0) {
                    d.a next = it2.next();
                    objectOutputStream.writeUTF(next.a().toString());
                    objectOutputStream.writeBoolean(next.b());
                } else {
                    try {
                        break;
                    } catch (IOException e12) {
                        e12.printStackTrace();
                    }
                }
            }
            objectOutputStream.close();
            byteArrayOutputStream.close();
            objectOutputStream2 = hasNext;
        } catch (IOException e13) {
            e = e13;
            objectOutputStream3 = objectOutputStream;
            e.printStackTrace();
            if (objectOutputStream3 != null) {
                try {
                    objectOutputStream3.close();
                } catch (IOException e14) {
                    e14.printStackTrace();
                }
            }
            byteArrayOutputStream.close();
            objectOutputStream2 = objectOutputStream3;
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th2) {
            th = th2;
            objectOutputStream2 = objectOutputStream;
            if (objectOutputStream2 != null) {
                try {
                    objectOutputStream2.close();
                } catch (IOException e15) {
                    e15.printStackTrace();
                }
            }
            try {
                byteArrayOutputStream.close();
                throw th;
            } catch (IOException e16) {
                e16.printStackTrace();
                throw th;
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static d2.a d(int i10) {
        if (i10 == 0) {
            return d2.a.EXPONENTIAL;
        }
        if (i10 == 1) {
            return d2.a.LINEAR;
        }
        throw new IllegalArgumentException("Could not convert " + i10 + " to BackoffPolicy");
    }

    public static d2.m e(int i10) {
        if (i10 == 0) {
            return d2.m.NOT_REQUIRED;
        }
        if (i10 == 1) {
            return d2.m.CONNECTED;
        }
        if (i10 == 2) {
            return d2.m.UNMETERED;
        }
        if (i10 == 3) {
            return d2.m.NOT_ROAMING;
        }
        if (i10 == 4) {
            return d2.m.METERED;
        }
        throw new IllegalArgumentException("Could not convert " + i10 + " to NetworkType");
    }

    public static u.a f(int i10) {
        if (i10 == 0) {
            return u.a.ENQUEUED;
        }
        if (i10 == 1) {
            return u.a.RUNNING;
        }
        if (i10 == 2) {
            return u.a.SUCCEEDED;
        }
        if (i10 == 3) {
            return u.a.FAILED;
        }
        if (i10 == 4) {
            return u.a.BLOCKED;
        }
        if (i10 == 5) {
            return u.a.CANCELLED;
        }
        throw new IllegalArgumentException("Could not convert " + i10 + " to State");
    }

    public static int g(d2.m mVar) {
        int i10 = a.f10880c[mVar.ordinal()];
        if (i10 == 1) {
            return 0;
        }
        if (i10 == 2) {
            return 1;
        }
        if (i10 == 3) {
            return 2;
        }
        if (i10 == 4) {
            return 3;
        }
        if (i10 == 5) {
            return 4;
        }
        throw new IllegalArgumentException("Could not convert " + mVar + " to int");
    }

    public static int h(u.a aVar) {
        switch (a.f10878a[aVar.ordinal()]) {
            case 1:
                return 0;
            case 2:
                return 1;
            case 3:
                return 2;
            case 4:
                return 3;
            case 5:
                return 4;
            case 6:
                return 5;
            default:
                throw new IllegalArgumentException("Could not convert " + aVar + " to int");
        }
    }
}
