package h6;

import android.app.Application;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.MediaStore;
import android.webkit.MimeTypeMap;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.j0;
import androidx.lifecycle.y;
import cc.k;
import com.google.android.gms.common.internal.ImagesContract;
import g7.c;
import h6.c;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import jc.l;
import qc.u;
import rc.c2;
import rc.g1;
import rc.i;
import rc.l0;
import rc.q0;
import vb.p;

/* compiled from: FullscreenImageViewModel.kt */
/* loaded from: classes.dex */
public final class c extends androidx.lifecycle.b {

    /* renamed from: b, reason: collision with root package name */
    public y<g7.c<p>> f7344b;

    /* renamed from: c, reason: collision with root package name */
    public final LiveData<g7.c<p>> f7345c;

    /* compiled from: FullscreenImageViewModel.kt */
    @cc.f(c = "com.anslayer.ui.profile.FullscreenImageViewModel$addFileToDownloadsApi21$2", f = "FullscreenImageViewModel.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class a extends k implements ic.p<q0, ac.d<? super File>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f7346f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ File f7347g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(File file, ac.d<? super a> dVar) {
            super(2, dVar);
            this.f7347g = file;
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            return new a(this.f7347g, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super File> dVar) {
            return ((a) create(q0Var, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f7346f == 0) {
                vb.k.b(obj);
                if (this.f7347g.createNewFile()) {
                    return this.f7347g;
                }
                throw new Exception("File " + ((Object) this.f7347g.getName()) + " already exists");
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* compiled from: FullscreenImageViewModel.kt */
    @cc.f(c = "com.anslayer.ui.profile.FullscreenImageViewModel", f = "FullscreenImageViewModel.kt", l = {131}, m = "addFileToDownloadsApi29")
    /* loaded from: classes.dex */
    public static final class b extends cc.d {

        /* renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f7348f;

        /* renamed from: h, reason: collision with root package name */
        public int f7350h;

        public b(ac.d<? super b> dVar) {
            super(dVar);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            this.f7348f = obj;
            this.f7350h |= Integer.MIN_VALUE;
            return c.this.k(null, this);
        }
    }

    /* compiled from: FullscreenImageViewModel.kt */
    @cc.f(c = "com.anslayer.ui.profile.FullscreenImageViewModel$addFileToDownloadsApi29$2", f = "FullscreenImageViewModel.kt", l = {}, m = "invokeSuspend")
    /* renamed from: h6.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0143c extends k implements ic.p<q0, ac.d<? super Uri>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f7351f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Uri f7353h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ String f7354i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0143c(Uri uri, String str, ac.d<? super C0143c> dVar) {
            super(2, dVar);
            this.f7353h = uri;
            this.f7354i = str;
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            return new C0143c(this.f7353h, this.f7354i, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super Uri> dVar) {
            return ((C0143c) create(q0Var, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f7351f == 0) {
                vb.k.b(obj);
                ContentValues contentValues = new ContentValues();
                contentValues.put("_display_name", this.f7354i);
                Uri insert = c.this.m().getContentResolver().insert(this.f7353h, contentValues);
                if (insert != null) {
                    return insert;
                }
                throw new Exception("MediaStore Uri couldn't be created");
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* compiled from: FullscreenImageViewModel.kt */
    @cc.f(c = "com.anslayer.ui.profile.FullscreenImageViewModel$getImageFile$2", f = "FullscreenImageViewModel.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class d extends k implements ic.p<q0, ac.d<? super File>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f7355f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ String f7357h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str, ac.d<? super d> dVar) {
            super(2, dVar);
            this.f7357h = str;
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            return new d(this.f7357h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super File> dVar) {
            return ((d) create(q0Var, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f7355f == 0) {
                vb.k.b(obj);
                try {
                    return d4.a.a(c.this.m()).E().y0(this.f7357h).B0().get();
                } catch (Exception unused) {
                    return null;
                }
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* compiled from: FullscreenImageViewModel.kt */
    @cc.f(c = "com.anslayer.ui.profile.FullscreenImageViewModel$getMediaStoreEntryPathApi29$2", f = "FullscreenImageViewModel.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class e extends k implements ic.p<q0, ac.d<? super String>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f7358f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ Uri f7360h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(Uri uri, ac.d<? super e> dVar) {
            super(2, dVar);
            this.f7360h = uri;
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            return new e(this.f7360h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super String> dVar) {
            return ((e) create(q0Var, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f7358f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            Cursor query = c.this.m().getContentResolver().query(this.f7360h, new String[]{"_data"}, null, null, null);
            if (query == null) {
                return null;
            }
            try {
                if (!query.moveToFirst()) {
                    gc.b.a(query, null);
                    return null;
                }
                String string = query.getString(query.getColumnIndexOrThrow("_data"));
                gc.b.a(query, null);
                return string;
            } finally {
            }
        }
    }

    /* compiled from: FullscreenImageViewModel.kt */
    @cc.f(c = "com.anslayer.ui.profile.FullscreenImageViewModel$saveImage$1", f = "FullscreenImageViewModel.kt", l = {55}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class f extends k implements ic.p<q0, ac.d<? super p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f7361f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ String f7362g;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ c f7363h;

        /* compiled from: FullscreenImageViewModel.kt */
        @cc.f(c = "com.anslayer.ui.profile.FullscreenImageViewModel$saveImage$1$1", f = "FullscreenImageViewModel.kt", l = {58, 62, 72, 77, 79, 81, 93}, m = "invokeSuspend")
        /* loaded from: classes.dex */
        public static final class a extends k implements ic.p<q0, ac.d<? super p>, Object> {

            /* renamed from: f, reason: collision with root package name */
            public Object f7364f;

            /* renamed from: g, reason: collision with root package name */
            public Object f7365g;

            /* renamed from: h, reason: collision with root package name */
            public int f7366h;

            /* renamed from: i, reason: collision with root package name */
            public final /* synthetic */ c f7367i;

            /* renamed from: j, reason: collision with root package name */
            public final /* synthetic */ String f7368j;

            /* renamed from: k, reason: collision with root package name */
            public final /* synthetic */ String f7369k;

            /* renamed from: l, reason: collision with root package name */
            public final /* synthetic */ String f7370l;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(c cVar, String str, String str2, String str3, ac.d<? super a> dVar) {
                super(2, dVar);
                this.f7367i = cVar;
                this.f7368j = str;
                this.f7369k = str2;
                this.f7370l = str3;
            }

            @Override // cc.a
            public final ac.d<p> create(Object obj, ac.d<?> dVar) {
                return new a(this.f7367i, this.f7368j, this.f7369k, this.f7370l, dVar);
            }

            @Override // ic.p
            public final Object invoke(q0 q0Var, ac.d<? super p> dVar) {
                return ((a) create(q0Var, dVar)).invokeSuspend(p.f15031a);
            }

            /* JADX WARN: Failed to find 'out' block for switch in B:3:0x000d. Please report as an issue. */
            /* JADX WARN: Removed duplicated region for block: B:15:0x012a A[Catch: Exception -> 0x0048, TRY_LEAVE, TryCatch #2 {Exception -> 0x0048, blocks: (B:7:0x0018, B:8:0x0165, B:12:0x0025, B:13:0x0126, B:15:0x012a, B:19:0x0135, B:28:0x0179, B:29:0x017c, B:30:0x002a, B:31:0x010c, B:35:0x0033, B:36:0x00bb, B:38:0x00bf, B:41:0x00cf, B:42:0x00da, B:44:0x0040, B:45:0x008a, B:47:0x008e, B:51:0x0099, B:61:0x00de, B:62:0x00e1, B:63:0x0044, B:64:0x0062, B:66:0x0076, B:70:0x00e2, B:71:0x00fd, B:73:0x004e, B:75:0x0054, B:78:0x00fe, B:18:0x012d, B:25:0x0177, B:50:0x0091, B:58:0x00dc), top: B:2:0x000d, inners: #0, #1, #3, #4 }] */
            /* JADX WARN: Removed duplicated region for block: B:17:0x012d A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:33:0x0125 A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:38:0x00bf A[Catch: Exception -> 0x0048, TryCatch #2 {Exception -> 0x0048, blocks: (B:7:0x0018, B:8:0x0165, B:12:0x0025, B:13:0x0126, B:15:0x012a, B:19:0x0135, B:28:0x0179, B:29:0x017c, B:30:0x002a, B:31:0x010c, B:35:0x0033, B:36:0x00bb, B:38:0x00bf, B:41:0x00cf, B:42:0x00da, B:44:0x0040, B:45:0x008a, B:47:0x008e, B:51:0x0099, B:61:0x00de, B:62:0x00e1, B:63:0x0044, B:64:0x0062, B:66:0x0076, B:70:0x00e2, B:71:0x00fd, B:73:0x004e, B:75:0x0054, B:78:0x00fe, B:18:0x012d, B:25:0x0177, B:50:0x0091, B:58:0x00dc), top: B:2:0x000d, inners: #0, #1, #3, #4 }] */
            /* JADX WARN: Removed duplicated region for block: B:41:0x00cf A[Catch: Exception -> 0x0048, TryCatch #2 {Exception -> 0x0048, blocks: (B:7:0x0018, B:8:0x0165, B:12:0x0025, B:13:0x0126, B:15:0x012a, B:19:0x0135, B:28:0x0179, B:29:0x017c, B:30:0x002a, B:31:0x010c, B:35:0x0033, B:36:0x00bb, B:38:0x00bf, B:41:0x00cf, B:42:0x00da, B:44:0x0040, B:45:0x008a, B:47:0x008e, B:51:0x0099, B:61:0x00de, B:62:0x00e1, B:63:0x0044, B:64:0x0062, B:66:0x0076, B:70:0x00e2, B:71:0x00fd, B:73:0x004e, B:75:0x0054, B:78:0x00fe, B:18:0x012d, B:25:0x0177, B:50:0x0091, B:58:0x00dc), top: B:2:0x000d, inners: #0, #1, #3, #4 }] */
            /* JADX WARN: Removed duplicated region for block: B:47:0x008e A[Catch: Exception -> 0x0048, TRY_LEAVE, TryCatch #2 {Exception -> 0x0048, blocks: (B:7:0x0018, B:8:0x0165, B:12:0x0025, B:13:0x0126, B:15:0x012a, B:19:0x0135, B:28:0x0179, B:29:0x017c, B:30:0x002a, B:31:0x010c, B:35:0x0033, B:36:0x00bb, B:38:0x00bf, B:41:0x00cf, B:42:0x00da, B:44:0x0040, B:45:0x008a, B:47:0x008e, B:51:0x0099, B:61:0x00de, B:62:0x00e1, B:63:0x0044, B:64:0x0062, B:66:0x0076, B:70:0x00e2, B:71:0x00fd, B:73:0x004e, B:75:0x0054, B:78:0x00fe, B:18:0x012d, B:25:0x0177, B:50:0x0091, B:58:0x00dc), top: B:2:0x000d, inners: #0, #1, #3, #4 }] */
            /* JADX WARN: Removed duplicated region for block: B:49:0x0091 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:66:0x0076 A[Catch: Exception -> 0x0048, TryCatch #2 {Exception -> 0x0048, blocks: (B:7:0x0018, B:8:0x0165, B:12:0x0025, B:13:0x0126, B:15:0x012a, B:19:0x0135, B:28:0x0179, B:29:0x017c, B:30:0x002a, B:31:0x010c, B:35:0x0033, B:36:0x00bb, B:38:0x00bf, B:41:0x00cf, B:42:0x00da, B:44:0x0040, B:45:0x008a, B:47:0x008e, B:51:0x0099, B:61:0x00de, B:62:0x00e1, B:63:0x0044, B:64:0x0062, B:66:0x0076, B:70:0x00e2, B:71:0x00fd, B:73:0x004e, B:75:0x0054, B:78:0x00fe, B:18:0x012d, B:25:0x0177, B:50:0x0091, B:58:0x00dc), top: B:2:0x000d, inners: #0, #1, #3, #4 }] */
            /* JADX WARN: Removed duplicated region for block: B:70:0x00e2 A[Catch: Exception -> 0x0048, TryCatch #2 {Exception -> 0x0048, blocks: (B:7:0x0018, B:8:0x0165, B:12:0x0025, B:13:0x0126, B:15:0x012a, B:19:0x0135, B:28:0x0179, B:29:0x017c, B:30:0x002a, B:31:0x010c, B:35:0x0033, B:36:0x00bb, B:38:0x00bf, B:41:0x00cf, B:42:0x00da, B:44:0x0040, B:45:0x008a, B:47:0x008e, B:51:0x0099, B:61:0x00de, B:62:0x00e1, B:63:0x0044, B:64:0x0062, B:66:0x0076, B:70:0x00e2, B:71:0x00fd, B:73:0x004e, B:75:0x0054, B:78:0x00fe, B:18:0x012d, B:25:0x0177, B:50:0x0091, B:58:0x00dc), top: B:2:0x000d, inners: #0, #1, #3, #4 }] */
            @Override // cc.a
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object invokeSuspend(Object obj) {
                OutputStream openOutputStream;
                Uri uri;
                FileOutputStream fileOutputStream;
                File file;
                Uri uri2;
                String str;
                File file2;
                File file3;
                Object d10 = bc.c.d();
                try {
                } catch (Exception e10) {
                    e10.toString();
                    this.f7367i.f7344b.m(new c.a(e10));
                }
                switch (this.f7366h) {
                    case 0:
                        vb.k.b(obj);
                        if (Build.VERSION.SDK_INT >= 29) {
                            c cVar = this.f7367i;
                            String str2 = this.f7368j;
                            this.f7366h = 1;
                            obj = cVar.k(str2, this);
                            if (obj == d10) {
                                return d10;
                            }
                            Uri uri3 = (Uri) obj;
                            openOutputStream = this.f7367i.m().getContentResolver().openOutputStream(uri3, "w");
                            if (openOutputStream == null) {
                                c cVar2 = this.f7367i;
                                String str3 = this.f7369k;
                                this.f7364f = uri3;
                                this.f7365g = openOutputStream;
                                this.f7366h = 2;
                                Object o10 = cVar2.o(str3, this);
                                if (o10 == d10) {
                                    return d10;
                                }
                                uri = uri3;
                                obj = o10;
                                file = (File) obj;
                                if (file != null) {
                                    return p.f15031a;
                                }
                                try {
                                    gc.a.b(new FileInputStream(file), fileOutputStream, 0, 2, null);
                                    gc.b.a(fileOutputStream, null);
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append("File downloaded (");
                                    sb2.append(uri);
                                    sb2.append(')');
                                    c cVar3 = this.f7367i;
                                    this.f7364f = uri;
                                    this.f7365g = null;
                                    this.f7366h = 3;
                                    obj = cVar3.p(uri, this);
                                    if (obj == d10) {
                                        return d10;
                                    }
                                    uri2 = uri;
                                    str = (String) obj;
                                    if (str == null) {
                                        c cVar4 = this.f7367i;
                                        String str4 = this.f7370l;
                                        this.f7364f = null;
                                        this.f7366h = 4;
                                        if (cVar4.r(str, str4, this) == d10) {
                                            return d10;
                                        }
                                        this.f7367i.f7344b.m(new c.C0133c(p.f15031a));
                                        return p.f15031a;
                                    }
                                    throw new Exception(l.m("ContentResolver couldn't find ", uri2));
                                } finally {
                                }
                            } else {
                                throw new Exception("ContentResolver couldn't open " + uri3 + " outputStream");
                            }
                        } else {
                            c cVar5 = this.f7367i;
                            String str5 = this.f7368j;
                            this.f7366h = 5;
                            obj = cVar5.j(str5, this);
                            if (obj == d10) {
                                return d10;
                            }
                            file2 = (File) obj;
                            fileOutputStream = new FileOutputStream(file2);
                            c cVar6 = this.f7367i;
                            String str6 = this.f7369k;
                            this.f7364f = file2;
                            this.f7365g = fileOutputStream;
                            this.f7366h = 6;
                            obj = cVar6.o(str6, this);
                            if (obj == d10) {
                                return d10;
                            }
                            file3 = (File) obj;
                            if (file3 == null) {
                                return p.f15031a;
                            }
                            try {
                                gc.a.b(new FileInputStream(file3), fileOutputStream, 0, 2, null);
                                gc.b.a(fileOutputStream, null);
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append("File downloaded (");
                                sb3.append((Object) file2.getAbsolutePath());
                                sb3.append(')');
                                c cVar7 = this.f7367i;
                                String path = file2.getPath();
                                l.e(path, "file.path");
                                String str7 = this.f7370l;
                                this.f7364f = null;
                                this.f7365g = null;
                                this.f7366h = 7;
                                if (cVar7.r(path, str7, this) == d10) {
                                    return d10;
                                }
                                this.f7367i.f7344b.m(new c.C0133c(p.f15031a));
                                return p.f15031a;
                            } finally {
                                try {
                                    throw th;
                                } finally {
                                }
                            }
                        }
                    case 1:
                        vb.k.b(obj);
                        Uri uri32 = (Uri) obj;
                        openOutputStream = this.f7367i.m().getContentResolver().openOutputStream(uri32, "w");
                        if (openOutputStream == null) {
                        }
                        break;
                    case 2:
                        openOutputStream = (OutputStream) this.f7365g;
                        uri = (Uri) this.f7364f;
                        vb.k.b(obj);
                        file = (File) obj;
                        if (file != null) {
                        }
                        break;
                    case 3:
                        uri2 = (Uri) this.f7364f;
                        vb.k.b(obj);
                        str = (String) obj;
                        if (str == null) {
                        }
                        break;
                    case 4:
                    case 7:
                        vb.k.b(obj);
                        this.f7367i.f7344b.m(new c.C0133c(p.f15031a));
                        return p.f15031a;
                    case 5:
                        vb.k.b(obj);
                        file2 = (File) obj;
                        fileOutputStream = new FileOutputStream(file2);
                        c cVar62 = this.f7367i;
                        String str62 = this.f7369k;
                        this.f7364f = file2;
                        this.f7365g = fileOutputStream;
                        this.f7366h = 6;
                        obj = cVar62.o(str62, this);
                        if (obj == d10) {
                        }
                        file3 = (File) obj;
                        if (file3 == null) {
                        }
                        break;
                    case 6:
                        fileOutputStream = (FileOutputStream) this.f7365g;
                        file2 = (File) this.f7364f;
                        vb.k.b(obj);
                        file3 = (File) obj;
                        if (file3 == null) {
                        }
                        break;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(String str, c cVar, ac.d<? super f> dVar) {
            super(2, dVar);
            this.f7362g = str;
            this.f7363h = cVar;
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            return new f(this.f7362g, this.f7363h, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super p> dVar) {
            return ((f) create(q0Var, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            Object d10 = bc.c.d();
            int i10 = this.f7361f;
            if (i10 == 0) {
                vb.k.b(obj);
                String str = this.f7362g;
                String substring = str.substring(u.S(str, ".", 0, false, 6, null) + 1);
                l.e(substring, "this as java.lang.String).substring(startIndex)");
                String l10 = this.f7363h.l(substring);
                l0 b10 = g1.b();
                a aVar = new a(this.f7363h, l10, this.f7362g, substring, null);
                this.f7361f = 1;
                if (i.g(b10, aVar, this) == d10) {
                    return d10;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                vb.k.b(obj);
            }
            return p.f15031a;
        }
    }

    /* compiled from: FullscreenImageViewModel.kt */
    @cc.f(c = "com.anslayer.ui.profile.FullscreenImageViewModel$scanFilePath$2", f = "FullscreenImageViewModel.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes.dex */
    public static final class g extends k implements ic.p<q0, ac.d<? super p>, Object> {

        /* renamed from: f, reason: collision with root package name */
        public int f7371f;

        /* renamed from: h, reason: collision with root package name */
        public final /* synthetic */ String f7373h;

        /* renamed from: i, reason: collision with root package name */
        public final /* synthetic */ String f7374i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(String str, String str2, ac.d<? super g> dVar) {
            super(2, dVar);
            this.f7373h = str;
            this.f7374i = str2;
        }

        public static final void g(String str, String str2, Uri uri) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("MediaStore updated (");
            sb2.append(str);
            sb2.append(", ");
            sb2.append(uri);
            sb2.append(')');
        }

        @Override // cc.a
        public final ac.d<p> create(Object obj, ac.d<?> dVar) {
            return new g(this.f7373h, this.f7374i, dVar);
        }

        @Override // ic.p
        public final Object invoke(q0 q0Var, ac.d<? super p> dVar) {
            return ((g) create(q0Var, dVar)).invokeSuspend(p.f15031a);
        }

        @Override // cc.a
        public final Object invokeSuspend(Object obj) {
            bc.c.d();
            if (this.f7371f != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            vb.k.b(obj);
            Context m10 = c.this.m();
            final String str = this.f7373h;
            MediaScannerConnection.scanFile(m10, new String[]{str}, new String[]{this.f7374i}, new MediaScannerConnection.OnScanCompletedListener() { // from class: h6.d
                @Override // android.media.MediaScannerConnection.OnScanCompletedListener
                public final void onScanCompleted(String str2, Uri uri) {
                    c.g.g(str, str2, uri);
                }
            });
            return p.f15031a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(Application application) {
        super(application);
        l.f(application, "application");
        y<g7.c<p>> yVar = new y<>();
        this.f7344b = yVar;
        this.f7345c = yVar;
    }

    public final Object j(String str, ac.d<? super File> dVar) {
        return i.g(g1.b(), new a(new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS), str), null), dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object k(String str, ac.d<? super Uri> dVar) {
        b bVar;
        int i10;
        if (dVar instanceof b) {
            bVar = (b) dVar;
            int i11 = bVar.f7350h;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                bVar.f7350h = i11 - Integer.MIN_VALUE;
                Object obj = bVar.f7348f;
                Object d10 = bc.c.d();
                i10 = bVar.f7350h;
                if (i10 != 0) {
                    vb.k.b(obj);
                    Uri contentUri = MediaStore.Downloads.getContentUri("external_primary");
                    l.e(contentUri, "getContentUri(MediaStore.VOLUME_EXTERNAL_PRIMARY)");
                    l0 b10 = g1.b();
                    C0143c c0143c = new C0143c(contentUri, str, null);
                    bVar.f7350h = 1;
                    obj = i.g(b10, c0143c, bVar);
                    if (obj == d10) {
                        return d10;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    vb.k.b(obj);
                }
                l.e(obj, "@Suppress(\"BlockingMetho…created\")\n        }\n    }");
                return obj;
            }
        }
        bVar = new b(dVar);
        Object obj2 = bVar.f7348f;
        Object d102 = bc.c.d();
        i10 = bVar.f7350h;
        if (i10 != 0) {
        }
        l.e(obj2, "@Suppress(\"BlockingMetho…created\")\n        }\n    }");
        return obj2;
    }

    public final String l(String str) {
        return System.currentTimeMillis() + '.' + str;
    }

    public final Context m() {
        Application a10 = a();
        l.e(a10, "getApplication()");
        return a10;
    }

    public final LiveData<g7.c<p>> n() {
        return this.f7345c;
    }

    public final Object o(String str, ac.d<? super File> dVar) {
        return i.g(g1.b(), new d(str, null), dVar);
    }

    public final Object p(Uri uri, ac.d<? super String> dVar) {
        return i.g(g1.b(), new e(uri, null), dVar);
    }

    public final c2 q(String str) {
        c2 d10;
        l.f(str, ImagesContract.URL);
        d10 = rc.k.d(j0.a(this), null, null, new f(str, this, null), 3, null);
        return d10;
    }

    public final Object r(String str, String str2, ac.d<? super p> dVar) {
        Object g10;
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(str2);
        return (mimeTypeFromExtension != null && (g10 = i.g(g1.b(), new g(str, mimeTypeFromExtension, null), dVar)) == bc.c.d()) ? g10 : p.f15031a;
    }
}
