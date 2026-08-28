package r0;

import android.R;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import okhttp3.internal.http2.Http2;
import org.apache.http.impl.auth.NTLMEngineImpl;
import r0.f;

/* compiled from: AccessibilityNodeInfoCompat.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: d, reason: collision with root package name */
    public static int f12755d;

    /* renamed from: a, reason: collision with root package name */
    public final AccessibilityNodeInfo f12756a;

    /* renamed from: b, reason: collision with root package name */
    public int f12757b = -1;

    /* renamed from: c, reason: collision with root package name */
    public int f12758c = -1;

    /* compiled from: AccessibilityNodeInfoCompat.java */
    /* loaded from: classes.dex */
    public static class a {
        public static final a A;
        public static final a B;
        public static final a C;
        public static final a D;
        public static final a E;
        public static final a F;
        public static final a G;
        public static final a H;
        public static final a I;
        public static final a J;
        public static final a K;
        public static final a L;
        public static final a M;
        public static final a N;
        public static final a O;
        public static final a P;
        public static final a Q;

        /* renamed from: e, reason: collision with root package name */
        public static final a f12759e = new a(1, null);

        /* renamed from: f, reason: collision with root package name */
        public static final a f12760f = new a(2, null);

        /* renamed from: g, reason: collision with root package name */
        public static final a f12761g = new a(4, null);

        /* renamed from: h, reason: collision with root package name */
        public static final a f12762h = new a(8, null);

        /* renamed from: i, reason: collision with root package name */
        public static final a f12763i = new a(16, null);

        /* renamed from: j, reason: collision with root package name */
        public static final a f12764j = new a(32, null);

        /* renamed from: k, reason: collision with root package name */
        public static final a f12765k = new a(64, null);

        /* renamed from: l, reason: collision with root package name */
        public static final a f12766l = new a(128, null);

        /* renamed from: m, reason: collision with root package name */
        public static final a f12767m = new a(256, (CharSequence) null, (Class<? extends f.a>) f.b.class);

        /* renamed from: n, reason: collision with root package name */
        public static final a f12768n = new a(512, (CharSequence) null, (Class<? extends f.a>) f.b.class);

        /* renamed from: o, reason: collision with root package name */
        public static final a f12769o = new a(RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE, (CharSequence) null, (Class<? extends f.a>) f.c.class);

        /* renamed from: p, reason: collision with root package name */
        public static final a f12770p = new a(RecyclerView.e0.FLAG_MOVED, (CharSequence) null, (Class<? extends f.a>) f.c.class);

        /* renamed from: q, reason: collision with root package name */
        public static final a f12771q = new a(RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT, null);

        /* renamed from: r, reason: collision with root package name */
        public static final a f12772r = new a(RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST, null);

        /* renamed from: s, reason: collision with root package name */
        public static final a f12773s = new a(Http2.INITIAL_MAX_FRAME_SIZE, null);

        /* renamed from: t, reason: collision with root package name */
        public static final a f12774t = new a(NTLMEngineImpl.FLAG_NEGOTIATE_ALWAYS_SIGN, null);

        /* renamed from: u, reason: collision with root package name */
        public static final a f12775u = new a(65536, null);

        /* renamed from: v, reason: collision with root package name */
        public static final a f12776v = new a(131072, (CharSequence) null, (Class<? extends f.a>) f.g.class);

        /* renamed from: w, reason: collision with root package name */
        public static final a f12777w = new a(262144, null);

        /* renamed from: x, reason: collision with root package name */
        public static final a f12778x = new a(NTLMEngineImpl.FLAG_NEGOTIATE_NTLM2, null);

        /* renamed from: y, reason: collision with root package name */
        public static final a f12779y = new a(1048576, null);

        /* renamed from: z, reason: collision with root package name */
        public static final a f12780z = new a(2097152, (CharSequence) null, (Class<? extends f.a>) f.h.class);

        /* renamed from: a, reason: collision with root package name */
        public final Object f12781a;

        /* renamed from: b, reason: collision with root package name */
        public final int f12782b;

        /* renamed from: c, reason: collision with root package name */
        public final Class<? extends f.a> f12783c;

        /* renamed from: d, reason: collision with root package name */
        public final f f12784d;

        static {
            int i10 = Build.VERSION.SDK_INT;
            A = new a(i10 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN : null, R.id.accessibilityActionShowOnScreen, null, null, null);
            B = new a(i10 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION : null, R.id.accessibilityActionScrollToPosition, null, null, f.e.class);
            C = new a(i10 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP : null, R.id.accessibilityActionScrollUp, null, null, null);
            D = new a(i10 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT : null, R.id.accessibilityActionScrollLeft, null, null, null);
            E = new a(i10 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN : null, R.id.accessibilityActionScrollDown, null, null, null);
            F = new a(i10 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT : null, R.id.accessibilityActionScrollRight, null, null, null);
            G = new a(i10 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP : null, R.id.accessibilityActionPageUp, null, null, null);
            H = new a(i10 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN : null, R.id.accessibilityActionPageDown, null, null, null);
            I = new a(i10 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : null, R.id.accessibilityActionPageLeft, null, null, null);
            J = new a(i10 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT : null, R.id.accessibilityActionPageRight, null, null, null);
            K = new a(i10 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK : null, R.id.accessibilityActionContextClick, null, null, null);
            L = new a(i10 >= 24 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS : null, R.id.accessibilityActionSetProgress, null, null, f.C0312f.class);
            M = new a(i10 >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null, R.id.accessibilityActionMoveWindow, null, null, f.d.class);
            N = new a(i10 >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null, R.id.accessibilityActionShowTooltip, null, null, null);
            O = new a(i10 >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP : null, R.id.accessibilityActionHideTooltip, null, null, null);
            P = new a(i10 >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD : null, R.id.accessibilityActionPressAndHold, null, null, null);
            Q = new a(i10 >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER : null, R.id.accessibilityActionImeEnter, null, null, null);
        }

        public a(int i10, CharSequence charSequence) {
            this(null, i10, charSequence, null, null);
        }

        public a a(CharSequence charSequence, f fVar) {
            return new a(null, this.f12782b, charSequence, fVar, this.f12783c);
        }

        public int b() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.f12781a).getId();
            }
            return 0;
        }

        public CharSequence c() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.f12781a).getLabel();
            }
            return null;
        }

        public boolean d(View view, Bundle bundle) {
            f.a newInstance;
            if (this.f12784d == null) {
                return false;
            }
            f.a aVar = null;
            Class<? extends f.a> cls = this.f12783c;
            if (cls != null) {
                try {
                    newInstance = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Exception unused) {
                }
                try {
                    newInstance.a(bundle);
                    aVar = newInstance;
                } catch (Exception unused2) {
                    aVar = newInstance;
                    Class<? extends f.a> cls2 = this.f12783c;
                    String name = cls2 == null ? "null" : cls2.getName();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Failed to execute command with argument class ViewCommandArgument: ");
                    sb2.append(name);
                    return this.f12784d.perform(view, aVar);
                }
            }
            return this.f12784d.perform(view, aVar);
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            Object obj2 = this.f12781a;
            return obj2 == null ? aVar.f12781a == null : obj2.equals(aVar.f12781a);
        }

        public int hashCode() {
            Object obj = this.f12781a;
            if (obj != null) {
                return obj.hashCode();
            }
            return 0;
        }

        public a(int i10, CharSequence charSequence, f fVar) {
            this(null, i10, charSequence, fVar, null);
        }

        public a(Object obj) {
            this(obj, 0, null, null, null);
        }

        public a(int i10, CharSequence charSequence, Class<? extends f.a> cls) {
            this(null, i10, charSequence, null, cls);
        }

        public a(Object obj, int i10, CharSequence charSequence, f fVar, Class<? extends f.a> cls) {
            this.f12782b = i10;
            this.f12784d = fVar;
            if (Build.VERSION.SDK_INT >= 21 && obj == null) {
                this.f12781a = new AccessibilityNodeInfo.AccessibilityAction(i10, charSequence);
            } else {
                this.f12781a = obj;
            }
            this.f12783c = cls;
        }
    }

    /* compiled from: AccessibilityNodeInfoCompat.java */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final Object f12785a;

        public b(Object obj) {
            this.f12785a = obj;
        }

        public static b a(int i10, int i11, boolean z10) {
            if (Build.VERSION.SDK_INT >= 19) {
                return new b(AccessibilityNodeInfo.CollectionInfo.obtain(i10, i11, z10));
            }
            return new b(null);
        }

        public static b b(int i10, int i11, boolean z10, int i12) {
            int i13 = Build.VERSION.SDK_INT;
            if (i13 >= 21) {
                return new b(AccessibilityNodeInfo.CollectionInfo.obtain(i10, i11, z10, i12));
            }
            if (i13 >= 19) {
                return new b(AccessibilityNodeInfo.CollectionInfo.obtain(i10, i11, z10));
            }
            return new b(null);
        }
    }

    /* compiled from: AccessibilityNodeInfoCompat.java */
    /* renamed from: r0.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0311c {

        /* renamed from: a, reason: collision with root package name */
        public final Object f12786a;

        public C0311c(Object obj) {
            this.f12786a = obj;
        }

        public static C0311c f(int i10, int i11, int i12, int i13, boolean z10, boolean z11) {
            int i14 = Build.VERSION.SDK_INT;
            if (i14 >= 21) {
                return new C0311c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i10, i11, i12, i13, z10, z11));
            }
            if (i14 >= 19) {
                return new C0311c(AccessibilityNodeInfo.CollectionItemInfo.obtain(i10, i11, i12, i13, z10));
            }
            return new C0311c(null);
        }

        public int a() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.f12786a).getColumnIndex();
            }
            return 0;
        }

        public int b() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.f12786a).getColumnSpan();
            }
            return 0;
        }

        public int c() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.f12786a).getRowIndex();
            }
            return 0;
        }

        public int d() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.f12786a).getRowSpan();
            }
            return 0;
        }

        public boolean e() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.f12786a).isSelected();
            }
            return false;
        }
    }

    /* compiled from: AccessibilityNodeInfoCompat.java */
    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        public final Object f12787a;

        public d(Object obj) {
            this.f12787a = obj;
        }

        public static d a(int i10, float f10, float f11, float f12) {
            if (Build.VERSION.SDK_INT >= 19) {
                return new d(AccessibilityNodeInfo.RangeInfo.obtain(i10, f10, f11, f12));
            }
            return new d(null);
        }
    }

    public c(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f12756a = accessibilityNodeInfo;
    }

    public static c G0(AccessibilityNodeInfo accessibilityNodeInfo) {
        return new c(accessibilityNodeInfo);
    }

    public static c O() {
        return G0(AccessibilityNodeInfo.obtain());
    }

    public static c P(View view) {
        return G0(AccessibilityNodeInfo.obtain(view));
    }

    public static c Q(c cVar) {
        return G0(AccessibilityNodeInfo.obtain(cVar.f12756a));
    }

    public static String j(int i10) {
        if (i10 == 1) {
            return "ACTION_FOCUS";
        }
        if (i10 == 2) {
            return "ACTION_CLEAR_FOCUS";
        }
        switch (i10) {
            case 4:
                return "ACTION_SELECT";
            case 8:
                return "ACTION_CLEAR_SELECTION";
            case 16:
                return "ACTION_CLICK";
            case 32:
                return "ACTION_LONG_CLICK";
            case 64:
                return "ACTION_ACCESSIBILITY_FOCUS";
            case 128:
                return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
            case 256:
                return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
            case 512:
                return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
            case RecyclerView.e0.FLAG_ADAPTER_FULLUPDATE /* 1024 */:
                return "ACTION_NEXT_HTML_ELEMENT";
            case RecyclerView.e0.FLAG_MOVED /* 2048 */:
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            case RecyclerView.e0.FLAG_APPEARED_IN_PRE_LAYOUT /* 4096 */:
                return "ACTION_SCROLL_FORWARD";
            case RecyclerView.e0.FLAG_BOUNCED_FROM_HIDDEN_LIST /* 8192 */:
                return "ACTION_SCROLL_BACKWARD";
            case Http2.INITIAL_MAX_FRAME_SIZE /* 16384 */:
                return "ACTION_COPY";
            case NTLMEngineImpl.FLAG_NEGOTIATE_ALWAYS_SIGN /* 32768 */:
                return "ACTION_PASTE";
            case 65536:
                return "ACTION_CUT";
            case 131072:
                return "ACTION_SET_SELECTION";
            case 262144:
                return "ACTION_EXPAND";
            case NTLMEngineImpl.FLAG_NEGOTIATE_NTLM2 /* 524288 */:
                return "ACTION_COLLAPSE";
            case 2097152:
                return "ACTION_SET_TEXT";
            case R.id.accessibilityActionMoveWindow:
                return "ACTION_MOVE_WINDOW";
            case R.id.accessibilityActionImeEnter:
                return "ACTION_IME_ENTER";
            default:
                switch (i10) {
                    case R.id.accessibilityActionShowOnScreen:
                        return "ACTION_SHOW_ON_SCREEN";
                    case R.id.accessibilityActionScrollToPosition:
                        return "ACTION_SCROLL_TO_POSITION";
                    case R.id.accessibilityActionScrollUp:
                        return "ACTION_SCROLL_UP";
                    case R.id.accessibilityActionScrollLeft:
                        return "ACTION_SCROLL_LEFT";
                    case R.id.accessibilityActionScrollDown:
                        return "ACTION_SCROLL_DOWN";
                    case R.id.accessibilityActionScrollRight:
                        return "ACTION_SCROLL_RIGHT";
                    case R.id.accessibilityActionContextClick:
                        return "ACTION_CONTEXT_CLICK";
                    case R.id.accessibilityActionSetProgress:
                        return "ACTION_SET_PROGRESS";
                    default:
                        switch (i10) {
                            case R.id.accessibilityActionShowTooltip:
                                return "ACTION_SHOW_TOOLTIP";
                            case R.id.accessibilityActionHideTooltip:
                                return "ACTION_HIDE_TOOLTIP";
                            case R.id.accessibilityActionPageUp:
                                return "ACTION_PAGE_UP";
                            case R.id.accessibilityActionPageDown:
                                return "ACTION_PAGE_DOWN";
                            case R.id.accessibilityActionPageLeft:
                                return "ACTION_PAGE_LEFT";
                            case R.id.accessibilityActionPageRight:
                                return "ACTION_PAGE_RIGHT";
                            case R.id.accessibilityActionPressAndHold:
                                return "ACTION_PRESS_AND_HOLD";
                            default:
                                return "ACTION_UNKNOWN";
                        }
                }
        }
    }

    public static ClickableSpan[] q(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    public final int A(ClickableSpan clickableSpan, SparseArray<WeakReference<ClickableSpan>> sparseArray) {
        if (sparseArray != null) {
            for (int i10 = 0; i10 < sparseArray.size(); i10++) {
                if (clickableSpan.equals(sparseArray.valueAt(i10).get())) {
                    return sparseArray.keyAt(i10);
                }
            }
        }
        int i11 = f12755d;
        f12755d = i11 + 1;
        return i11;
    }

    public void A0(View view, int i10) {
        this.f12758c = i10;
        if (Build.VERSION.SDK_INT >= 16) {
            this.f12756a.setSource(view, i10);
        }
    }

    public boolean B() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f12756a.isAccessibilityFocused();
        }
        return false;
    }

    public void B0(CharSequence charSequence) {
        if (m0.a.b()) {
            this.f12756a.setStateDescription(charSequence);
        } else if (Build.VERSION.SDK_INT >= 19) {
            this.f12756a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY", charSequence);
        }
    }

    public boolean C() {
        return this.f12756a.isCheckable();
    }

    public void C0(CharSequence charSequence) {
        this.f12756a.setText(charSequence);
    }

    public boolean D() {
        return this.f12756a.isChecked();
    }

    public void D0(View view) {
        if (Build.VERSION.SDK_INT >= 22) {
            this.f12756a.setTraversalAfter(view);
        }
    }

    public boolean E() {
        return this.f12756a.isClickable();
    }

    public void E0(boolean z10) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f12756a.setVisibleToUser(z10);
        }
    }

    public boolean F() {
        return this.f12756a.isEnabled();
    }

    public AccessibilityNodeInfo F0() {
        return this.f12756a;
    }

    public boolean G() {
        return this.f12756a.isFocusable();
    }

    public boolean H() {
        return this.f12756a.isFocused();
    }

    public boolean I() {
        return this.f12756a.isLongClickable();
    }

    public boolean J() {
        return this.f12756a.isPassword();
    }

    public boolean K() {
        return this.f12756a.isScrollable();
    }

    public boolean L() {
        return this.f12756a.isSelected();
    }

    public boolean M() {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.f12756a.isShowingHintText();
        }
        return l(4);
    }

    public boolean N() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f12756a.isVisibleToUser();
        }
        return false;
    }

    public boolean R(int i10, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.f12756a.performAction(i10, bundle);
        }
        return false;
    }

    public void S() {
        this.f12756a.recycle();
    }

    public boolean T(a aVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            return this.f12756a.removeAction((AccessibilityNodeInfo.AccessibilityAction) aVar.f12781a);
        }
        return false;
    }

    public final void U(View view) {
        SparseArray<WeakReference<ClickableSpan>> w10 = w(view);
        if (w10 != null) {
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < w10.size(); i10++) {
                if (w10.valueAt(i10).get() == null) {
                    arrayList.add(Integer.valueOf(i10));
                }
            }
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                w10.remove(((Integer) arrayList.get(i11)).intValue());
            }
        }
    }

    public void V(boolean z10) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f12756a.setAccessibilityFocused(z10);
        }
    }

    public final void W(int i10, boolean z10) {
        Bundle t10 = t();
        if (t10 != null) {
            int i11 = t10.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (i10 ^ (-1));
            if (!z10) {
                i10 = 0;
            }
            t10.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", i10 | i11);
        }
    }

    @Deprecated
    public void X(Rect rect) {
        this.f12756a.setBoundsInParent(rect);
    }

    public void Y(Rect rect) {
        this.f12756a.setBoundsInScreen(rect);
    }

    public void Z(boolean z10) {
        this.f12756a.setCheckable(z10);
    }

    public void a(int i10) {
        this.f12756a.addAction(i10);
    }

    public void a0(boolean z10) {
        this.f12756a.setChecked(z10);
    }

    public void b(a aVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f12756a.addAction((AccessibilityNodeInfo.AccessibilityAction) aVar.f12781a);
        }
    }

    public void b0(CharSequence charSequence) {
        this.f12756a.setClassName(charSequence);
    }

    public void c(View view) {
        this.f12756a.addChild(view);
    }

    public void c0(boolean z10) {
        this.f12756a.setClickable(z10);
    }

    public void d(View view, int i10) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.f12756a.addChild(view, i10);
        }
    }

    public void d0(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f12756a.setCollectionInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionInfo) ((b) obj).f12785a);
        }
    }

    public final void e(ClickableSpan clickableSpan, Spanned spanned, int i10) {
        h("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").add(Integer.valueOf(spanned.getSpanStart(clickableSpan)));
        h("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY").add(Integer.valueOf(spanned.getSpanEnd(clickableSpan)));
        h("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY").add(Integer.valueOf(spanned.getSpanFlags(clickableSpan)));
        h("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY").add(Integer.valueOf(i10));
    }

    public void e0(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f12756a.setCollectionItemInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionItemInfo) ((C0311c) obj).f12786a);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f12756a;
        if (accessibilityNodeInfo == null) {
            if (cVar.f12756a != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo.equals(cVar.f12756a)) {
            return false;
        }
        return this.f12758c == cVar.f12758c && this.f12757b == cVar.f12757b;
    }

    public void f(CharSequence charSequence, View view) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 19 || i10 >= 26) {
            return;
        }
        g();
        U(view);
        ClickableSpan[] q10 = q(charSequence);
        if (q10 == null || q10.length <= 0) {
            return;
        }
        t().putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY", d0.c.f5461a);
        SparseArray<WeakReference<ClickableSpan>> u10 = u(view);
        for (int i11 = 0; i11 < q10.length; i11++) {
            int A = A(q10[i11], u10);
            u10.put(A, new WeakReference<>(q10[i11]));
            e(q10[i11], (Spanned) charSequence, A);
        }
    }

    public void f0(CharSequence charSequence) {
        this.f12756a.setContentDescription(charSequence);
    }

    public final void g() {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f12756a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
            this.f12756a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
            this.f12756a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
            this.f12756a.getExtras().remove("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
        }
    }

    public void g0(boolean z10) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f12756a.setDismissable(z10);
        }
    }

    public final List<Integer> h(String str) {
        if (Build.VERSION.SDK_INT < 19) {
            return new ArrayList();
        }
        ArrayList<Integer> integerArrayList = this.f12756a.getExtras().getIntegerArrayList(str);
        if (integerArrayList != null) {
            return integerArrayList;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        this.f12756a.getExtras().putIntegerArrayList(str, arrayList);
        return arrayList;
    }

    public void h0(boolean z10) {
        this.f12756a.setEnabled(z10);
    }

    public int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f12756a;
        if (accessibilityNodeInfo == null) {
            return 0;
        }
        return accessibilityNodeInfo.hashCode();
    }

    public List<a> i() {
        List<AccessibilityNodeInfo.AccessibilityAction> actionList = Build.VERSION.SDK_INT >= 21 ? this.f12756a.getActionList() : null;
        if (actionList != null) {
            ArrayList arrayList = new ArrayList();
            int size = actionList.size();
            for (int i10 = 0; i10 < size; i10++) {
                arrayList.add(new a(actionList.get(i10)));
            }
            return arrayList;
        }
        return Collections.emptyList();
    }

    public void i0(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f12756a.setError(charSequence);
        }
    }

    public void j0(boolean z10) {
        this.f12756a.setFocusable(z10);
    }

    public int k() {
        return this.f12756a.getActions();
    }

    public void k0(boolean z10) {
        this.f12756a.setFocused(z10);
    }

    public final boolean l(int i10) {
        Bundle t10 = t();
        return t10 != null && (t10.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & i10) == i10;
    }

    public void l0(boolean z10) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f12756a.setHeading(z10);
        } else {
            W(2, z10);
        }
    }

    @Deprecated
    public void m(Rect rect) {
        this.f12756a.getBoundsInParent(rect);
    }

    public void m0(CharSequence charSequence) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 26) {
            this.f12756a.setHintText(charSequence);
        } else if (i10 >= 19) {
            this.f12756a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.HINT_TEXT_KEY", charSequence);
        }
    }

    public void n(Rect rect) {
        this.f12756a.getBoundsInScreen(rect);
    }

    public void n0(boolean z10) {
        this.f12756a.setLongClickable(z10);
    }

    public int o() {
        return this.f12756a.getChildCount();
    }

    public void o0(int i10) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f12756a.setMaxTextLength(i10);
        }
    }

    public CharSequence p() {
        return this.f12756a.getClassName();
    }

    public void p0(CharSequence charSequence) {
        this.f12756a.setPackageName(charSequence);
    }

    public void q0(CharSequence charSequence) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 28) {
            this.f12756a.setPaneTitle(charSequence);
        } else if (i10 >= 19) {
            this.f12756a.getExtras().putCharSequence("androidx.view.accessibility.AccessibilityNodeInfoCompat.PANE_TITLE_KEY", charSequence);
        }
    }

    public C0311c r() {
        AccessibilityNodeInfo.CollectionItemInfo collectionItemInfo;
        if (Build.VERSION.SDK_INT < 19 || (collectionItemInfo = this.f12756a.getCollectionItemInfo()) == null) {
            return null;
        }
        return new C0311c(collectionItemInfo);
    }

    public void r0(View view) {
        this.f12757b = -1;
        this.f12756a.setParent(view);
    }

    public CharSequence s() {
        return this.f12756a.getContentDescription();
    }

    public void s0(View view, int i10) {
        this.f12757b = i10;
        if (Build.VERSION.SDK_INT >= 16) {
            this.f12756a.setParent(view, i10);
        }
    }

    public Bundle t() {
        if (Build.VERSION.SDK_INT >= 19) {
            return this.f12756a.getExtras();
        }
        return new Bundle();
    }

    public void t0(d dVar) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f12756a.setRangeInfo((AccessibilityNodeInfo.RangeInfo) dVar.f12787a);
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        Rect rect = new Rect();
        m(rect);
        sb2.append("; boundsInParent: " + rect);
        n(rect);
        sb2.append("; boundsInScreen: " + rect);
        sb2.append("; packageName: ");
        sb2.append(v());
        sb2.append("; className: ");
        sb2.append(p());
        sb2.append("; text: ");
        sb2.append(x());
        sb2.append("; contentDescription: ");
        sb2.append(s());
        sb2.append("; viewId: ");
        sb2.append(y());
        sb2.append("; checkable: ");
        sb2.append(C());
        sb2.append("; checked: ");
        sb2.append(D());
        sb2.append("; focusable: ");
        sb2.append(G());
        sb2.append("; focused: ");
        sb2.append(H());
        sb2.append("; selected: ");
        sb2.append(L());
        sb2.append("; clickable: ");
        sb2.append(E());
        sb2.append("; longClickable: ");
        sb2.append(I());
        sb2.append("; enabled: ");
        sb2.append(F());
        sb2.append("; password: ");
        sb2.append(J());
        sb2.append("; scrollable: " + K());
        sb2.append("; [");
        if (Build.VERSION.SDK_INT >= 21) {
            List<a> i10 = i();
            for (int i11 = 0; i11 < i10.size(); i11++) {
                a aVar = i10.get(i11);
                String j10 = j(aVar.b());
                if (j10.equals("ACTION_UNKNOWN") && aVar.c() != null) {
                    j10 = aVar.c().toString();
                }
                sb2.append(j10);
                if (i11 != i10.size() - 1) {
                    sb2.append(", ");
                }
            }
        } else {
            int k10 = k();
            while (k10 != 0) {
                int numberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(k10);
                k10 &= numberOfTrailingZeros ^ (-1);
                sb2.append(j(numberOfTrailingZeros));
                if (k10 != 0) {
                    sb2.append(", ");
                }
            }
        }
        sb2.append("]");
        return sb2.toString();
    }

    public final SparseArray<WeakReference<ClickableSpan>> u(View view) {
        SparseArray<WeakReference<ClickableSpan>> w10 = w(view);
        if (w10 != null) {
            return w10;
        }
        SparseArray<WeakReference<ClickableSpan>> sparseArray = new SparseArray<>();
        view.setTag(d0.c.I, sparseArray);
        return sparseArray;
    }

    public void u0(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f12756a.getExtras().putCharSequence("AccessibilityNodeInfo.roleDescription", charSequence);
        }
    }

    public CharSequence v() {
        return this.f12756a.getPackageName();
    }

    public void v0(boolean z10) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f12756a.setScreenReaderFocusable(z10);
        } else {
            W(1, z10);
        }
    }

    public final SparseArray<WeakReference<ClickableSpan>> w(View view) {
        return (SparseArray) view.getTag(d0.c.I);
    }

    public void w0(boolean z10) {
        this.f12756a.setScrollable(z10);
    }

    public CharSequence x() {
        if (z()) {
            List<Integer> h10 = h("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY");
            List<Integer> h11 = h("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY");
            List<Integer> h12 = h("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY");
            List<Integer> h13 = h("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY");
            SpannableString spannableString = new SpannableString(TextUtils.substring(this.f12756a.getText(), 0, this.f12756a.getText().length()));
            for (int i10 = 0; i10 < h10.size(); i10++) {
                spannableString.setSpan(new r0.a(h13.get(i10).intValue(), this, t().getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY")), h10.get(i10).intValue(), h11.get(i10).intValue(), h12.get(i10).intValue());
            }
            return spannableString;
        }
        return this.f12756a.getText();
    }

    public void x0(boolean z10) {
        this.f12756a.setSelected(z10);
    }

    public String y() {
        if (Build.VERSION.SDK_INT >= 18) {
            return this.f12756a.getViewIdResourceName();
        }
        return null;
    }

    public void y0(boolean z10) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f12756a.setShowingHintText(z10);
        } else {
            W(4, z10);
        }
    }

    public final boolean z() {
        return !h("androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY").isEmpty();
    }

    public void z0(View view) {
        this.f12758c = -1;
        this.f12756a.setSource(view);
    }
}
