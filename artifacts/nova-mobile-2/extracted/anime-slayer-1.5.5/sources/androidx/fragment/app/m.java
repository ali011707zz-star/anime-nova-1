package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* compiled from: FragmentLayoutInflaterFactory.java */
/* loaded from: classes.dex */
public class m implements LayoutInflater.Factory2 {

    /* renamed from: f, reason: collision with root package name */
    public final FragmentManager f2252f;

    /* compiled from: FragmentLayoutInflaterFactory.java */
    /* loaded from: classes.dex */
    public class a implements View.OnAttachStateChangeListener {

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ u f2253f;

        public a(u uVar) {
            this.f2253f = uVar;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            Fragment k10 = this.f2253f.k();
            this.f2253f.m();
            e0.n((ViewGroup) k10.mView.getParent(), m.this.f2252f).j();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    public m(FragmentManager fragmentManager) {
        this.f2252f = fragmentManager;
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        u w10;
        if (FragmentContainerView.class.getName().equals(str)) {
            return new FragmentContainerView(context, attributeSet, this.f2252f);
        }
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c1.c.f3640d);
        if (attributeValue == null) {
            attributeValue = obtainStyledAttributes.getString(c1.c.f3641e);
        }
        int resourceId = obtainStyledAttributes.getResourceId(c1.c.f3642f, -1);
        String string = obtainStyledAttributes.getString(c1.c.f3643g);
        obtainStyledAttributes.recycle();
        if (attributeValue == null || !i.b(context.getClassLoader(), attributeValue)) {
            return null;
        }
        int id2 = view != null ? view.getId() : 0;
        if (id2 == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
        }
        Fragment h02 = resourceId != -1 ? this.f2252f.h0(resourceId) : null;
        if (h02 == null && string != null) {
            h02 = this.f2252f.i0(string);
        }
        if (h02 == null && id2 != -1) {
            h02 = this.f2252f.h0(id2);
        }
        if (h02 == null) {
            h02 = this.f2252f.r0().a(context.getClassLoader(), attributeValue);
            h02.mFromLayout = true;
            h02.mFragmentId = resourceId != 0 ? resourceId : id2;
            h02.mContainerId = id2;
            h02.mTag = string;
            h02.mInLayout = true;
            FragmentManager fragmentManager = this.f2252f;
            h02.mFragmentManager = fragmentManager;
            h02.mHost = fragmentManager.u0();
            h02.onInflate(this.f2252f.u0().f(), attributeSet, h02.mSavedFragmentState);
            w10 = this.f2252f.g(h02);
            if (FragmentManager.G0(2)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Fragment ");
                sb2.append(h02);
                sb2.append(" has been inflated via the <fragment> tag: id=0x");
                sb2.append(Integer.toHexString(resourceId));
            }
        } else if (!h02.mInLayout) {
            h02.mInLayout = true;
            FragmentManager fragmentManager2 = this.f2252f;
            h02.mFragmentManager = fragmentManager2;
            h02.mHost = fragmentManager2.u0();
            h02.onInflate(this.f2252f.u0().f(), attributeSet, h02.mSavedFragmentState);
            w10 = this.f2252f.w(h02);
            if (FragmentManager.G0(2)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Retained Fragment ");
                sb3.append(h02);
                sb3.append(" has been re-attached via the <fragment> tag: id=0x");
                sb3.append(Integer.toHexString(resourceId));
            }
        } else {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id2) + " with another fragment for " + attributeValue);
        }
        h02.mContainer = (ViewGroup) view;
        w10.m();
        w10.j();
        View view2 = h02.mView;
        if (view2 != null) {
            if (resourceId != 0) {
                view2.setId(resourceId);
            }
            if (h02.mView.getTag() == null) {
                h02.mView.setTag(string);
            }
            h02.mView.addOnAttachStateChangeListener(new a(w10));
            return h02.mView;
        }
        throw new IllegalStateException("Fragment " + attributeValue + " did not create a view.");
    }
}
