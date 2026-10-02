package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.k;
import java.util.ArrayList;

/* compiled from: FragmentStatePagerAdapter.java */
@Deprecated
/* loaded from: classes.dex */
public abstract class v extends b2.a {
    public static final int BEHAVIOR_RESUME_ONLY_CURRENT_FRAGMENT = 1;

    @Deprecated
    public static final int BEHAVIOR_SET_USER_VISIBLE_HINT = 0;
    private static final boolean DEBUG = false;
    private static final String TAG = "FragmentStatePagerAdapt";
    private final int mBehavior;
    private x mCurTransaction;
    private Fragment mCurrentPrimaryItem;
    private boolean mExecutingFinishUpdate;
    private final FragmentManager mFragmentManager;
    private ArrayList<Fragment> mFragments;
    private ArrayList<Fragment.l> mSavedState;

    @Deprecated
    public v(FragmentManager fragmentManager) {
        this(fragmentManager, 0);
    }

    @Override // b2.a
    public void destroyItem(ViewGroup viewGroup, int i10, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (this.mCurTransaction == null) {
            this.mCurTransaction = this.mFragmentManager.m();
        }
        while (this.mSavedState.size() <= i10) {
            this.mSavedState.add(null);
        }
        this.mSavedState.set(i10, fragment.isAdded() ? this.mFragmentManager.l1(fragment) : null);
        this.mFragments.set(i10, null);
        this.mCurTransaction.p(fragment);
        if (fragment.equals(this.mCurrentPrimaryItem)) {
            this.mCurrentPrimaryItem = null;
        }
    }

    @Override // b2.a
    public void finishUpdate(ViewGroup viewGroup) {
        x xVar = this.mCurTransaction;
        if (xVar != null) {
            if (!this.mExecutingFinishUpdate) {
                try {
                    this.mExecutingFinishUpdate = true;
                    xVar.l();
                } finally {
                    this.mExecutingFinishUpdate = false;
                }
            }
            this.mCurTransaction = null;
        }
    }

    public abstract Fragment getItem(int i10);

    @Override // b2.a
    public Object instantiateItem(ViewGroup viewGroup, int i10) {
        Fragment.l lVar;
        Fragment fragment;
        if (this.mFragments.size() > i10 && (fragment = this.mFragments.get(i10)) != null) {
            return fragment;
        }
        if (this.mCurTransaction == null) {
            this.mCurTransaction = this.mFragmentManager.m();
        }
        Fragment item = getItem(i10);
        if (this.mSavedState.size() > i10 && (lVar = this.mSavedState.get(i10)) != null) {
            item.setInitialSavedState(lVar);
        }
        while (this.mFragments.size() <= i10) {
            this.mFragments.add(null);
        }
        item.setMenuVisibility(false);
        if (this.mBehavior == 0) {
            item.setUserVisibleHint(false);
        }
        this.mFragments.set(i10, item);
        this.mCurTransaction.b(viewGroup.getId(), item);
        if (this.mBehavior == 1) {
            this.mCurTransaction.t(item, k.c.STARTED);
        }
        return item;
    }

    @Override // b2.a
    public boolean isViewFromObject(View view, Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    @Override // b2.a
    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
        if (parcelable != null) {
            Bundle bundle = (Bundle) parcelable;
            bundle.setClassLoader(classLoader);
            Parcelable[] parcelableArray = bundle.getParcelableArray("states");
            this.mSavedState.clear();
            this.mFragments.clear();
            if (parcelableArray != null) {
                for (Parcelable parcelable2 : parcelableArray) {
                    this.mSavedState.add((Fragment.l) parcelable2);
                }
            }
            for (String str : bundle.keySet()) {
                if (str.startsWith("f")) {
                    int parseInt = Integer.parseInt(str.substring(1));
                    Fragment p02 = this.mFragmentManager.p0(bundle, str);
                    if (p02 != null) {
                        while (this.mFragments.size() <= parseInt) {
                            this.mFragments.add(null);
                        }
                        p02.setMenuVisibility(false);
                        this.mFragments.set(parseInt, p02);
                    } else {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Bad fragment at key ");
                        sb2.append(str);
                    }
                }
            }
        }
    }

    @Override // b2.a
    public Parcelable saveState() {
        Bundle bundle;
        if (this.mSavedState.size() > 0) {
            bundle = new Bundle();
            Fragment.l[] lVarArr = new Fragment.l[this.mSavedState.size()];
            this.mSavedState.toArray(lVarArr);
            bundle.putParcelableArray("states", lVarArr);
        } else {
            bundle = null;
        }
        for (int i10 = 0; i10 < this.mFragments.size(); i10++) {
            Fragment fragment = this.mFragments.get(i10);
            if (fragment != null && fragment.isAdded()) {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                this.mFragmentManager.c1(bundle, "f" + i10, fragment);
            }
        }
        return bundle;
    }

    @Override // b2.a
    public void setPrimaryItem(ViewGroup viewGroup, int i10, Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.mCurrentPrimaryItem;
        if (fragment != fragment2) {
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
                if (this.mBehavior == 1) {
                    if (this.mCurTransaction == null) {
                        this.mCurTransaction = this.mFragmentManager.m();
                    }
                    this.mCurTransaction.t(this.mCurrentPrimaryItem, k.c.STARTED);
                } else {
                    this.mCurrentPrimaryItem.setUserVisibleHint(false);
                }
            }
            fragment.setMenuVisibility(true);
            if (this.mBehavior == 1) {
                if (this.mCurTransaction == null) {
                    this.mCurTransaction = this.mFragmentManager.m();
                }
                this.mCurTransaction.t(fragment, k.c.RESUMED);
            } else {
                fragment.setUserVisibleHint(true);
            }
            this.mCurrentPrimaryItem = fragment;
        }
    }

    @Override // b2.a
    public void startUpdate(ViewGroup viewGroup) {
        if (viewGroup.getId() != -1) {
            return;
        }
        throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
    }

    public v(FragmentManager fragmentManager, int i10) {
        this.mCurTransaction = null;
        this.mSavedState = new ArrayList<>();
        this.mFragments = new ArrayList<>();
        this.mCurrentPrimaryItem = null;
        this.mFragmentManager = fragmentManager;
        this.mBehavior = i10;
    }
}
