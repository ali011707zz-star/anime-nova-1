package x1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Path;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.InflateException;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;

/* compiled from: Transition.java */
/* loaded from: classes.dex */
public abstract class o implements Cloneable {
    public static final boolean DBG = false;
    private static final String LOG_TAG = "Transition";
    private static final int MATCH_FIRST = 1;
    public static final int MATCH_ID = 3;
    private static final String MATCH_ID_STR = "id";
    public static final int MATCH_INSTANCE = 1;
    private static final String MATCH_INSTANCE_STR = "instance";
    public static final int MATCH_ITEM_ID = 4;
    private static final String MATCH_ITEM_ID_STR = "itemId";
    private static final int MATCH_LAST = 4;
    public static final int MATCH_NAME = 2;
    private static final String MATCH_NAME_STR = "name";
    private ArrayList<u> mEndValuesList;
    private f mEpicenterCallback;
    private s.a<String, String> mNameOverrides;
    public r mPropagation;
    private ArrayList<u> mStartValuesList;
    private static final int[] DEFAULT_MATCH_ORDER = {2, 1, 3, 4};
    private static final x1.g STRAIGHT_PATH_MOTION = new a();
    private static ThreadLocal<s.a<Animator, d>> sRunningAnimators = new ThreadLocal<>();
    private String mName = getClass().getName();
    private long mStartDelay = -1;
    public long mDuration = -1;
    private TimeInterpolator mInterpolator = null;
    public ArrayList<Integer> mTargetIds = new ArrayList<>();
    public ArrayList<View> mTargets = new ArrayList<>();
    private ArrayList<String> mTargetNames = null;
    private ArrayList<Class<?>> mTargetTypes = null;
    private ArrayList<Integer> mTargetIdExcludes = null;
    private ArrayList<View> mTargetExcludes = null;
    private ArrayList<Class<?>> mTargetTypeExcludes = null;
    private ArrayList<String> mTargetNameExcludes = null;
    private ArrayList<Integer> mTargetIdChildExcludes = null;
    private ArrayList<View> mTargetChildExcludes = null;
    private ArrayList<Class<?>> mTargetTypeChildExcludes = null;
    private v mStartValues = new v();
    private v mEndValues = new v();
    public s mParent = null;
    private int[] mMatchOrder = DEFAULT_MATCH_ORDER;
    private ViewGroup mSceneRoot = null;
    public boolean mCanRemoveViews = false;
    public ArrayList<Animator> mCurrentAnimators = new ArrayList<>();
    private int mNumInstances = 0;
    private boolean mPaused = false;
    private boolean mEnded = false;
    private ArrayList<g> mListeners = null;
    private ArrayList<Animator> mAnimators = new ArrayList<>();
    private x1.g mPathMotion = STRAIGHT_PATH_MOTION;

    /* compiled from: Transition.java */
    /* loaded from: classes.dex */
    public static class a extends x1.g {
        @Override // x1.g
        public Path getPath(float f10, float f11, float f12, float f13) {
            Path path = new Path();
            path.moveTo(f10, f11);
            path.lineTo(f12, f13);
            return path;
        }
    }

    /* compiled from: Transition.java */
    /* loaded from: classes.dex */
    public class b extends AnimatorListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ s.a f15798a;

        public b(s.a aVar) {
            this.f15798a = aVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f15798a.remove(animator);
            o.this.mCurrentAnimators.remove(animator);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            o.this.mCurrentAnimators.add(animator);
        }
    }

    /* compiled from: Transition.java */
    /* loaded from: classes.dex */
    public class c extends AnimatorListenerAdapter {
        public c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            o.this.end();
            animator.removeListener(this);
        }
    }

    /* compiled from: Transition.java */
    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a, reason: collision with root package name */
        public View f15801a;

        /* renamed from: b, reason: collision with root package name */
        public String f15802b;

        /* renamed from: c, reason: collision with root package name */
        public u f15803c;

        /* renamed from: d, reason: collision with root package name */
        public o0 f15804d;

        /* renamed from: e, reason: collision with root package name */
        public o f15805e;

        public d(View view, String str, o oVar, o0 o0Var, u uVar) {
            this.f15801a = view;
            this.f15802b = str;
            this.f15803c = uVar;
            this.f15804d = o0Var;
            this.f15805e = oVar;
        }
    }

    /* compiled from: Transition.java */
    /* loaded from: classes.dex */
    public static class e {
        public static <T> ArrayList<T> a(ArrayList<T> arrayList, T t10) {
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            if (!arrayList.contains(t10)) {
                arrayList.add(t10);
            }
            return arrayList;
        }

        public static <T> ArrayList<T> b(ArrayList<T> arrayList, T t10) {
            if (arrayList == null) {
                return arrayList;
            }
            arrayList.remove(t10);
            if (arrayList.isEmpty()) {
                return null;
            }
            return arrayList;
        }
    }

    /* compiled from: Transition.java */
    /* loaded from: classes.dex */
    public static abstract class f {
        public abstract Rect a(o oVar);
    }

    /* compiled from: Transition.java */
    /* loaded from: classes.dex */
    public interface g {
        void onTransitionCancel(o oVar);

        void onTransitionEnd(o oVar);

        void onTransitionPause(o oVar);

        void onTransitionResume(o oVar);

        void onTransitionStart(o oVar);
    }

    public o() {
    }

    private void addUnmatched(s.a<View, u> aVar, s.a<View, u> aVar2) {
        for (int i10 = 0; i10 < aVar.size(); i10++) {
            u m10 = aVar.m(i10);
            if (isValidTarget(m10.f15825b)) {
                this.mStartValuesList.add(m10);
                this.mEndValuesList.add(null);
            }
        }
        for (int i11 = 0; i11 < aVar2.size(); i11++) {
            u m11 = aVar2.m(i11);
            if (isValidTarget(m11.f15825b)) {
                this.mEndValuesList.add(m11);
                this.mStartValuesList.add(null);
            }
        }
    }

    private static void addViewValues(v vVar, View view, u uVar) {
        vVar.f15827a.put(view, uVar);
        int id2 = view.getId();
        if (id2 >= 0) {
            if (vVar.f15828b.indexOfKey(id2) >= 0) {
                vVar.f15828b.put(id2, null);
            } else {
                vVar.f15828b.put(id2, view);
            }
        }
        String O = q0.b0.O(view);
        if (O != null) {
            if (vVar.f15830d.containsKey(O)) {
                vVar.f15830d.put(O, null);
            } else {
                vVar.f15830d.put(O, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (vVar.f15829c.h(itemIdAtPosition) >= 0) {
                    View f10 = vVar.f15829c.f(itemIdAtPosition);
                    if (f10 != null) {
                        q0.b0.D0(f10, false);
                        vVar.f15829c.j(itemIdAtPosition, null);
                        return;
                    }
                    return;
                }
                q0.b0.D0(view, true);
                vVar.f15829c.j(itemIdAtPosition, view);
            }
        }
    }

    private static boolean alreadyContains(int[] iArr, int i10) {
        int i11 = iArr[i10];
        for (int i12 = 0; i12 < i10; i12++) {
            if (iArr[i12] == i11) {
                return true;
            }
        }
        return false;
    }

    private void captureHierarchy(View view, boolean z10) {
        if (view == null) {
            return;
        }
        int id2 = view.getId();
        ArrayList<Integer> arrayList = this.mTargetIdExcludes;
        if (arrayList == null || !arrayList.contains(Integer.valueOf(id2))) {
            ArrayList<View> arrayList2 = this.mTargetExcludes;
            if (arrayList2 == null || !arrayList2.contains(view)) {
                ArrayList<Class<?>> arrayList3 = this.mTargetTypeExcludes;
                if (arrayList3 != null) {
                    int size = arrayList3.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        if (this.mTargetTypeExcludes.get(i10).isInstance(view)) {
                            return;
                        }
                    }
                }
                if (view.getParent() instanceof ViewGroup) {
                    u uVar = new u(view);
                    if (z10) {
                        captureStartValues(uVar);
                    } else {
                        captureEndValues(uVar);
                    }
                    uVar.f15826c.add(this);
                    capturePropagationValues(uVar);
                    if (z10) {
                        addViewValues(this.mStartValues, view, uVar);
                    } else {
                        addViewValues(this.mEndValues, view, uVar);
                    }
                }
                if (view instanceof ViewGroup) {
                    ArrayList<Integer> arrayList4 = this.mTargetIdChildExcludes;
                    if (arrayList4 == null || !arrayList4.contains(Integer.valueOf(id2))) {
                        ArrayList<View> arrayList5 = this.mTargetChildExcludes;
                        if (arrayList5 == null || !arrayList5.contains(view)) {
                            ArrayList<Class<?>> arrayList6 = this.mTargetTypeChildExcludes;
                            if (arrayList6 != null) {
                                int size2 = arrayList6.size();
                                for (int i11 = 0; i11 < size2; i11++) {
                                    if (this.mTargetTypeChildExcludes.get(i11).isInstance(view)) {
                                        return;
                                    }
                                }
                            }
                            ViewGroup viewGroup = (ViewGroup) view;
                            for (int i12 = 0; i12 < viewGroup.getChildCount(); i12++) {
                                captureHierarchy(viewGroup.getChildAt(i12), z10);
                            }
                        }
                    }
                }
            }
        }
    }

    private ArrayList<Integer> excludeId(ArrayList<Integer> arrayList, int i10, boolean z10) {
        if (i10 <= 0) {
            return arrayList;
        }
        if (z10) {
            return e.a(arrayList, Integer.valueOf(i10));
        }
        return e.b(arrayList, Integer.valueOf(i10));
    }

    private static <T> ArrayList<T> excludeObject(ArrayList<T> arrayList, T t10, boolean z10) {
        if (t10 == null) {
            return arrayList;
        }
        if (z10) {
            return e.a(arrayList, t10);
        }
        return e.b(arrayList, t10);
    }

    private ArrayList<Class<?>> excludeType(ArrayList<Class<?>> arrayList, Class<?> cls, boolean z10) {
        if (cls == null) {
            return arrayList;
        }
        if (z10) {
            return e.a(arrayList, cls);
        }
        return e.b(arrayList, cls);
    }

    private ArrayList<View> excludeView(ArrayList<View> arrayList, View view, boolean z10) {
        if (view == null) {
            return arrayList;
        }
        if (z10) {
            return e.a(arrayList, view);
        }
        return e.b(arrayList, view);
    }

    private static s.a<Animator, d> getRunningAnimators() {
        s.a<Animator, d> aVar = sRunningAnimators.get();
        if (aVar != null) {
            return aVar;
        }
        s.a<Animator, d> aVar2 = new s.a<>();
        sRunningAnimators.set(aVar2);
        return aVar2;
    }

    private static boolean isValidMatch(int i10) {
        return i10 >= 1 && i10 <= 4;
    }

    private static boolean isValueChanged(u uVar, u uVar2, String str) {
        Object obj = uVar.f15824a.get(str);
        Object obj2 = uVar2.f15824a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return true ^ obj.equals(obj2);
    }

    private void matchIds(s.a<View, u> aVar, s.a<View, u> aVar2, SparseArray<View> sparseArray, SparseArray<View> sparseArray2) {
        View view;
        int size = sparseArray.size();
        for (int i10 = 0; i10 < size; i10++) {
            View valueAt = sparseArray.valueAt(i10);
            if (valueAt != null && isValidTarget(valueAt) && (view = sparseArray2.get(sparseArray.keyAt(i10))) != null && isValidTarget(view)) {
                u uVar = aVar.get(valueAt);
                u uVar2 = aVar2.get(view);
                if (uVar != null && uVar2 != null) {
                    this.mStartValuesList.add(uVar);
                    this.mEndValuesList.add(uVar2);
                    aVar.remove(valueAt);
                    aVar2.remove(view);
                }
            }
        }
    }

    private void matchInstances(s.a<View, u> aVar, s.a<View, u> aVar2) {
        u remove;
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View i10 = aVar.i(size);
            if (i10 != null && isValidTarget(i10) && (remove = aVar2.remove(i10)) != null && isValidTarget(remove.f15825b)) {
                this.mStartValuesList.add(aVar.k(size));
                this.mEndValuesList.add(remove);
            }
        }
    }

    private void matchItemIds(s.a<View, u> aVar, s.a<View, u> aVar2, s.d<View> dVar, s.d<View> dVar2) {
        View f10;
        int m10 = dVar.m();
        for (int i10 = 0; i10 < m10; i10++) {
            View n10 = dVar.n(i10);
            if (n10 != null && isValidTarget(n10) && (f10 = dVar2.f(dVar.i(i10))) != null && isValidTarget(f10)) {
                u uVar = aVar.get(n10);
                u uVar2 = aVar2.get(f10);
                if (uVar != null && uVar2 != null) {
                    this.mStartValuesList.add(uVar);
                    this.mEndValuesList.add(uVar2);
                    aVar.remove(n10);
                    aVar2.remove(f10);
                }
            }
        }
    }

    private void matchNames(s.a<View, u> aVar, s.a<View, u> aVar2, s.a<String, View> aVar3, s.a<String, View> aVar4) {
        View view;
        int size = aVar3.size();
        for (int i10 = 0; i10 < size; i10++) {
            View m10 = aVar3.m(i10);
            if (m10 != null && isValidTarget(m10) && (view = aVar4.get(aVar3.i(i10))) != null && isValidTarget(view)) {
                u uVar = aVar.get(m10);
                u uVar2 = aVar2.get(view);
                if (uVar != null && uVar2 != null) {
                    this.mStartValuesList.add(uVar);
                    this.mEndValuesList.add(uVar2);
                    aVar.remove(m10);
                    aVar2.remove(view);
                }
            }
        }
    }

    private void matchStartAndEnd(v vVar, v vVar2) {
        s.a<View, u> aVar = new s.a<>(vVar.f15827a);
        s.a<View, u> aVar2 = new s.a<>(vVar2.f15827a);
        int i10 = 0;
        while (true) {
            int[] iArr = this.mMatchOrder;
            if (i10 < iArr.length) {
                int i11 = iArr[i10];
                if (i11 == 1) {
                    matchInstances(aVar, aVar2);
                } else if (i11 == 2) {
                    matchNames(aVar, aVar2, vVar.f15830d, vVar2.f15830d);
                } else if (i11 == 3) {
                    matchIds(aVar, aVar2, vVar.f15828b, vVar2.f15828b);
                } else if (i11 == 4) {
                    matchItemIds(aVar, aVar2, vVar.f15829c, vVar2.f15829c);
                }
                i10++;
            } else {
                addUnmatched(aVar, aVar2);
                return;
            }
        }
    }

    private static int[] parseMatchOrder(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        int[] iArr = new int[stringTokenizer.countTokens()];
        int i10 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String trim = stringTokenizer.nextToken().trim();
            if (MATCH_ID_STR.equalsIgnoreCase(trim)) {
                iArr[i10] = 3;
            } else if (MATCH_INSTANCE_STR.equalsIgnoreCase(trim)) {
                iArr[i10] = 1;
            } else if ("name".equalsIgnoreCase(trim)) {
                iArr[i10] = 2;
            } else if (MATCH_ITEM_ID_STR.equalsIgnoreCase(trim)) {
                iArr[i10] = 4;
            } else if (trim.isEmpty()) {
                int[] iArr2 = new int[iArr.length - 1];
                System.arraycopy(iArr, 0, iArr2, 0, i10);
                i10--;
                iArr = iArr2;
            } else {
                throw new InflateException("Unknown match type in matchOrder: '" + trim + "'");
            }
            i10++;
        }
        return iArr;
    }

    private void runAnimator(Animator animator, s.a<Animator, d> aVar) {
        if (animator != null) {
            animator.addListener(new b(aVar));
            animate(animator);
        }
    }

    public o addListener(g gVar) {
        if (this.mListeners == null) {
            this.mListeners = new ArrayList<>();
        }
        this.mListeners.add(gVar);
        return this;
    }

    public o addTarget(View view) {
        this.mTargets.add(view);
        return this;
    }

    public void animate(Animator animator) {
        if (animator == null) {
            end();
            return;
        }
        if (getDuration() >= 0) {
            animator.setDuration(getDuration());
        }
        if (getStartDelay() >= 0) {
            animator.setStartDelay(getStartDelay() + animator.getStartDelay());
        }
        if (getInterpolator() != null) {
            animator.setInterpolator(getInterpolator());
        }
        animator.addListener(new c());
        animator.start();
    }

    public void cancel() {
        for (int size = this.mCurrentAnimators.size() - 1; size >= 0; size--) {
            this.mCurrentAnimators.get(size).cancel();
        }
        ArrayList<g> arrayList = this.mListeners;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
        int size2 = arrayList2.size();
        for (int i10 = 0; i10 < size2; i10++) {
            ((g) arrayList2.get(i10)).onTransitionCancel(this);
        }
    }

    public abstract void captureEndValues(u uVar);

    public void capturePropagationValues(u uVar) {
    }

    public abstract void captureStartValues(u uVar);

    public void captureValues(ViewGroup viewGroup, boolean z10) {
        ArrayList<String> arrayList;
        ArrayList<Class<?>> arrayList2;
        s.a<String, String> aVar;
        clearValues(z10);
        if ((this.mTargetIds.size() <= 0 && this.mTargets.size() <= 0) || (((arrayList = this.mTargetNames) != null && !arrayList.isEmpty()) || ((arrayList2 = this.mTargetTypes) != null && !arrayList2.isEmpty()))) {
            captureHierarchy(viewGroup, z10);
        } else {
            for (int i10 = 0; i10 < this.mTargetIds.size(); i10++) {
                View findViewById = viewGroup.findViewById(this.mTargetIds.get(i10).intValue());
                if (findViewById != null) {
                    u uVar = new u(findViewById);
                    if (z10) {
                        captureStartValues(uVar);
                    } else {
                        captureEndValues(uVar);
                    }
                    uVar.f15826c.add(this);
                    capturePropagationValues(uVar);
                    if (z10) {
                        addViewValues(this.mStartValues, findViewById, uVar);
                    } else {
                        addViewValues(this.mEndValues, findViewById, uVar);
                    }
                }
            }
            for (int i11 = 0; i11 < this.mTargets.size(); i11++) {
                View view = this.mTargets.get(i11);
                u uVar2 = new u(view);
                if (z10) {
                    captureStartValues(uVar2);
                } else {
                    captureEndValues(uVar2);
                }
                uVar2.f15826c.add(this);
                capturePropagationValues(uVar2);
                if (z10) {
                    addViewValues(this.mStartValues, view, uVar2);
                } else {
                    addViewValues(this.mEndValues, view, uVar2);
                }
            }
        }
        if (z10 || (aVar = this.mNameOverrides) == null) {
            return;
        }
        int size = aVar.size();
        ArrayList arrayList3 = new ArrayList(size);
        for (int i12 = 0; i12 < size; i12++) {
            arrayList3.add(this.mStartValues.f15830d.remove(this.mNameOverrides.i(i12)));
        }
        for (int i13 = 0; i13 < size; i13++) {
            View view2 = (View) arrayList3.get(i13);
            if (view2 != null) {
                this.mStartValues.f15830d.put(this.mNameOverrides.m(i13), view2);
            }
        }
    }

    public void clearValues(boolean z10) {
        if (z10) {
            this.mStartValues.f15827a.clear();
            this.mStartValues.f15828b.clear();
            this.mStartValues.f15829c.b();
        } else {
            this.mEndValues.f15827a.clear();
            this.mEndValues.f15828b.clear();
            this.mEndValues.f15829c.b();
        }
    }

    public Animator createAnimator(ViewGroup viewGroup, u uVar, u uVar2) {
        return null;
    }

    public void createAnimators(ViewGroup viewGroup, v vVar, v vVar2, ArrayList<u> arrayList, ArrayList<u> arrayList2) {
        int i10;
        View view;
        Animator animator;
        u uVar;
        Animator animator2;
        u uVar2;
        s.a<Animator, d> runningAnimators = getRunningAnimators();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        int i11 = 0;
        while (i11 < size) {
            u uVar3 = arrayList.get(i11);
            u uVar4 = arrayList2.get(i11);
            if (uVar3 != null && !uVar3.f15826c.contains(this)) {
                uVar3 = null;
            }
            if (uVar4 != null && !uVar4.f15826c.contains(this)) {
                uVar4 = null;
            }
            if (uVar3 != null || uVar4 != null) {
                if (uVar3 == null || uVar4 == null || isTransitionRequired(uVar3, uVar4)) {
                    Animator createAnimator = createAnimator(viewGroup, uVar3, uVar4);
                    if (createAnimator != null) {
                        if (uVar4 != null) {
                            View view2 = uVar4.f15825b;
                            String[] transitionProperties = getTransitionProperties();
                            if (transitionProperties != null && transitionProperties.length > 0) {
                                uVar2 = new u(view2);
                                u uVar5 = vVar2.f15827a.get(view2);
                                if (uVar5 != null) {
                                    int i12 = 0;
                                    while (i12 < transitionProperties.length) {
                                        uVar2.f15824a.put(transitionProperties[i12], uVar5.f15824a.get(transitionProperties[i12]));
                                        i12++;
                                        createAnimator = createAnimator;
                                        size = size;
                                        uVar5 = uVar5;
                                    }
                                }
                                Animator animator3 = createAnimator;
                                i10 = size;
                                int size2 = runningAnimators.size();
                                int i13 = 0;
                                while (true) {
                                    if (i13 >= size2) {
                                        animator2 = animator3;
                                        break;
                                    }
                                    d dVar = runningAnimators.get(runningAnimators.i(i13));
                                    if (dVar.f15803c != null && dVar.f15801a == view2 && dVar.f15802b.equals(getName()) && dVar.f15803c.equals(uVar2)) {
                                        animator2 = null;
                                        break;
                                    }
                                    i13++;
                                }
                            } else {
                                i10 = size;
                                animator2 = createAnimator;
                                uVar2 = null;
                            }
                            view = view2;
                            animator = animator2;
                            uVar = uVar2;
                        } else {
                            i10 = size;
                            view = uVar3.f15825b;
                            animator = createAnimator;
                            uVar = null;
                        }
                        if (animator != null) {
                            runningAnimators.put(animator, new d(view, getName(), this, e0.d(viewGroup), uVar));
                            this.mAnimators.add(animator);
                        }
                        i11++;
                        size = i10;
                    }
                    i10 = size;
                    i11++;
                    size = i10;
                }
            }
            i10 = size;
            i11++;
            size = i10;
        }
        if (sparseIntArray.size() != 0) {
            for (int i14 = 0; i14 < sparseIntArray.size(); i14++) {
                Animator animator4 = this.mAnimators.get(sparseIntArray.keyAt(i14));
                animator4.setStartDelay((sparseIntArray.valueAt(i14) - RecyclerView.FOREVER_NS) + animator4.getStartDelay());
            }
        }
    }

    public void end() {
        int i10 = this.mNumInstances - 1;
        this.mNumInstances = i10;
        if (i10 == 0) {
            ArrayList<g> arrayList = this.mListeners;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
                int size = arrayList2.size();
                for (int i11 = 0; i11 < size; i11++) {
                    ((g) arrayList2.get(i11)).onTransitionEnd(this);
                }
            }
            for (int i12 = 0; i12 < this.mStartValues.f15829c.m(); i12++) {
                View n10 = this.mStartValues.f15829c.n(i12);
                if (n10 != null) {
                    q0.b0.D0(n10, false);
                }
            }
            for (int i13 = 0; i13 < this.mEndValues.f15829c.m(); i13++) {
                View n11 = this.mEndValues.f15829c.n(i13);
                if (n11 != null) {
                    q0.b0.D0(n11, false);
                }
            }
            this.mEnded = true;
        }
    }

    public o excludeChildren(View view, boolean z10) {
        this.mTargetChildExcludes = excludeView(this.mTargetChildExcludes, view, z10);
        return this;
    }

    public o excludeTarget(View view, boolean z10) {
        this.mTargetExcludes = excludeView(this.mTargetExcludes, view, z10);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void forceToEnd(ViewGroup viewGroup) {
        s.a<Animator, d> runningAnimators = getRunningAnimators();
        int size = runningAnimators.size();
        if (viewGroup == null || size == 0) {
            return;
        }
        o0 d10 = e0.d(viewGroup);
        s.a aVar = new s.a(runningAnimators);
        runningAnimators.clear();
        for (int i10 = size - 1; i10 >= 0; i10--) {
            d dVar = (d) aVar.m(i10);
            if (dVar.f15801a != null && d10 != null && d10.equals(dVar.f15804d)) {
                ((Animator) aVar.i(i10)).end();
            }
        }
    }

    public long getDuration() {
        return this.mDuration;
    }

    public Rect getEpicenter() {
        f fVar = this.mEpicenterCallback;
        if (fVar == null) {
            return null;
        }
        return fVar.a(this);
    }

    public f getEpicenterCallback() {
        return this.mEpicenterCallback;
    }

    public TimeInterpolator getInterpolator() {
        return this.mInterpolator;
    }

    public u getMatchedTransitionValues(View view, boolean z10) {
        s sVar = this.mParent;
        if (sVar != null) {
            return sVar.getMatchedTransitionValues(view, z10);
        }
        ArrayList<u> arrayList = z10 ? this.mStartValuesList : this.mEndValuesList;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i10 = -1;
        int i11 = 0;
        while (true) {
            if (i11 >= size) {
                break;
            }
            u uVar = arrayList.get(i11);
            if (uVar == null) {
                return null;
            }
            if (uVar.f15825b == view) {
                i10 = i11;
                break;
            }
            i11++;
        }
        if (i10 >= 0) {
            return (z10 ? this.mEndValuesList : this.mStartValuesList).get(i10);
        }
        return null;
    }

    public String getName() {
        return this.mName;
    }

    public x1.g getPathMotion() {
        return this.mPathMotion;
    }

    public r getPropagation() {
        return this.mPropagation;
    }

    public long getStartDelay() {
        return this.mStartDelay;
    }

    public List<Integer> getTargetIds() {
        return this.mTargetIds;
    }

    public List<String> getTargetNames() {
        return this.mTargetNames;
    }

    public List<Class<?>> getTargetTypes() {
        return this.mTargetTypes;
    }

    public List<View> getTargets() {
        return this.mTargets;
    }

    public String[] getTransitionProperties() {
        return null;
    }

    public u getTransitionValues(View view, boolean z10) {
        s sVar = this.mParent;
        if (sVar != null) {
            return sVar.getTransitionValues(view, z10);
        }
        return (z10 ? this.mStartValues : this.mEndValues).f15827a.get(view);
    }

    public boolean isTransitionRequired(u uVar, u uVar2) {
        if (uVar == null || uVar2 == null) {
            return false;
        }
        String[] transitionProperties = getTransitionProperties();
        if (transitionProperties != null) {
            for (String str : transitionProperties) {
                if (!isValueChanged(uVar, uVar2, str)) {
                }
            }
            return false;
        }
        Iterator<String> it2 = uVar.f15824a.keySet().iterator();
        while (it2.hasNext()) {
            if (isValueChanged(uVar, uVar2, it2.next())) {
            }
        }
        return false;
        return true;
    }

    public boolean isValidTarget(View view) {
        ArrayList<Class<?>> arrayList;
        ArrayList<String> arrayList2;
        int id2 = view.getId();
        ArrayList<Integer> arrayList3 = this.mTargetIdExcludes;
        if (arrayList3 != null && arrayList3.contains(Integer.valueOf(id2))) {
            return false;
        }
        ArrayList<View> arrayList4 = this.mTargetExcludes;
        if (arrayList4 != null && arrayList4.contains(view)) {
            return false;
        }
        ArrayList<Class<?>> arrayList5 = this.mTargetTypeExcludes;
        if (arrayList5 != null) {
            int size = arrayList5.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (this.mTargetTypeExcludes.get(i10).isInstance(view)) {
                    return false;
                }
            }
        }
        if (this.mTargetNameExcludes != null && q0.b0.O(view) != null && this.mTargetNameExcludes.contains(q0.b0.O(view))) {
            return false;
        }
        if ((this.mTargetIds.size() == 0 && this.mTargets.size() == 0 && (((arrayList = this.mTargetTypes) == null || arrayList.isEmpty()) && ((arrayList2 = this.mTargetNames) == null || arrayList2.isEmpty()))) || this.mTargetIds.contains(Integer.valueOf(id2)) || this.mTargets.contains(view)) {
            return true;
        }
        ArrayList<String> arrayList6 = this.mTargetNames;
        if (arrayList6 != null && arrayList6.contains(q0.b0.O(view))) {
            return true;
        }
        if (this.mTargetTypes != null) {
            for (int i11 = 0; i11 < this.mTargetTypes.size(); i11++) {
                if (this.mTargetTypes.get(i11).isInstance(view)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void pause(View view) {
        if (this.mEnded) {
            return;
        }
        s.a<Animator, d> runningAnimators = getRunningAnimators();
        int size = runningAnimators.size();
        o0 d10 = e0.d(view);
        for (int i10 = size - 1; i10 >= 0; i10--) {
            d m10 = runningAnimators.m(i10);
            if (m10.f15801a != null && d10.equals(m10.f15804d)) {
                x1.a.b(runningAnimators.i(i10));
            }
        }
        ArrayList<g> arrayList = this.mListeners;
        if (arrayList != null && arrayList.size() > 0) {
            ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
            int size2 = arrayList2.size();
            for (int i11 = 0; i11 < size2; i11++) {
                ((g) arrayList2.get(i11)).onTransitionPause(this);
            }
        }
        this.mPaused = true;
    }

    public void playTransition(ViewGroup viewGroup) {
        d dVar;
        this.mStartValuesList = new ArrayList<>();
        this.mEndValuesList = new ArrayList<>();
        matchStartAndEnd(this.mStartValues, this.mEndValues);
        s.a<Animator, d> runningAnimators = getRunningAnimators();
        int size = runningAnimators.size();
        o0 d10 = e0.d(viewGroup);
        for (int i10 = size - 1; i10 >= 0; i10--) {
            Animator i11 = runningAnimators.i(i10);
            if (i11 != null && (dVar = runningAnimators.get(i11)) != null && dVar.f15801a != null && d10.equals(dVar.f15804d)) {
                u uVar = dVar.f15803c;
                View view = dVar.f15801a;
                u transitionValues = getTransitionValues(view, true);
                u matchedTransitionValues = getMatchedTransitionValues(view, true);
                if (transitionValues == null && matchedTransitionValues == null) {
                    matchedTransitionValues = this.mEndValues.f15827a.get(view);
                }
                if (!(transitionValues == null && matchedTransitionValues == null) && dVar.f15805e.isTransitionRequired(uVar, matchedTransitionValues)) {
                    if (!i11.isRunning() && !i11.isStarted()) {
                        runningAnimators.remove(i11);
                    } else {
                        i11.cancel();
                    }
                }
            }
        }
        createAnimators(viewGroup, this.mStartValues, this.mEndValues, this.mStartValuesList, this.mEndValuesList);
        runAnimators();
    }

    public o removeListener(g gVar) {
        ArrayList<g> arrayList = this.mListeners;
        if (arrayList == null) {
            return this;
        }
        arrayList.remove(gVar);
        if (this.mListeners.size() == 0) {
            this.mListeners = null;
        }
        return this;
    }

    public o removeTarget(View view) {
        this.mTargets.remove(view);
        return this;
    }

    public void resume(View view) {
        if (this.mPaused) {
            if (!this.mEnded) {
                s.a<Animator, d> runningAnimators = getRunningAnimators();
                int size = runningAnimators.size();
                o0 d10 = e0.d(view);
                for (int i10 = size - 1; i10 >= 0; i10--) {
                    d m10 = runningAnimators.m(i10);
                    if (m10.f15801a != null && d10.equals(m10.f15804d)) {
                        x1.a.c(runningAnimators.i(i10));
                    }
                }
                ArrayList<g> arrayList = this.mListeners;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
                    int size2 = arrayList2.size();
                    for (int i11 = 0; i11 < size2; i11++) {
                        ((g) arrayList2.get(i11)).onTransitionResume(this);
                    }
                }
            }
            this.mPaused = false;
        }
    }

    public void runAnimators() {
        start();
        s.a<Animator, d> runningAnimators = getRunningAnimators();
        Iterator<Animator> it2 = this.mAnimators.iterator();
        while (it2.hasNext()) {
            Animator next = it2.next();
            if (runningAnimators.containsKey(next)) {
                start();
                runAnimator(next, runningAnimators);
            }
        }
        this.mAnimators.clear();
        end();
    }

    public void setCanRemoveViews(boolean z10) {
        this.mCanRemoveViews = z10;
    }

    public o setDuration(long j10) {
        this.mDuration = j10;
        return this;
    }

    public void setEpicenterCallback(f fVar) {
        this.mEpicenterCallback = fVar;
    }

    public o setInterpolator(TimeInterpolator timeInterpolator) {
        this.mInterpolator = timeInterpolator;
        return this;
    }

    public void setMatchOrder(int... iArr) {
        if (iArr != null && iArr.length != 0) {
            for (int i10 = 0; i10 < iArr.length; i10++) {
                if (isValidMatch(iArr[i10])) {
                    if (alreadyContains(iArr, i10)) {
                        throw new IllegalArgumentException("matches contains a duplicate value");
                    }
                } else {
                    throw new IllegalArgumentException("matches contains invalid value");
                }
            }
            this.mMatchOrder = (int[]) iArr.clone();
            return;
        }
        this.mMatchOrder = DEFAULT_MATCH_ORDER;
    }

    public void setPathMotion(x1.g gVar) {
        if (gVar == null) {
            this.mPathMotion = STRAIGHT_PATH_MOTION;
        } else {
            this.mPathMotion = gVar;
        }
    }

    public void setPropagation(r rVar) {
    }

    public o setSceneRoot(ViewGroup viewGroup) {
        this.mSceneRoot = viewGroup;
        return this;
    }

    public o setStartDelay(long j10) {
        this.mStartDelay = j10;
        return this;
    }

    public void start() {
        if (this.mNumInstances == 0) {
            ArrayList<g> arrayList = this.mListeners;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.mListeners.clone();
                int size = arrayList2.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((g) arrayList2.get(i10)).onTransitionStart(this);
                }
            }
            this.mEnded = false;
        }
        this.mNumInstances++;
    }

    public String toString() {
        return toString("");
    }

    public o addTarget(int i10) {
        if (i10 != 0) {
            this.mTargetIds.add(Integer.valueOf(i10));
        }
        return this;
    }

    @Override // 
    public o clone() {
        try {
            o oVar = (o) super.clone();
            oVar.mAnimators = new ArrayList<>();
            oVar.mStartValues = new v();
            oVar.mEndValues = new v();
            oVar.mStartValuesList = null;
            oVar.mEndValuesList = null;
            return oVar;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public o excludeChildren(int i10, boolean z10) {
        this.mTargetIdChildExcludes = excludeId(this.mTargetIdChildExcludes, i10, z10);
        return this;
    }

    public o excludeTarget(int i10, boolean z10) {
        this.mTargetIdExcludes = excludeId(this.mTargetIdExcludes, i10, z10);
        return this;
    }

    public o removeTarget(int i10) {
        if (i10 != 0) {
            this.mTargetIds.remove(Integer.valueOf(i10));
        }
        return this;
    }

    public String toString(String str) {
        String str2 = str + getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + ": ";
        if (this.mDuration != -1) {
            str2 = str2 + "dur(" + this.mDuration + ") ";
        }
        if (this.mStartDelay != -1) {
            str2 = str2 + "dly(" + this.mStartDelay + ") ";
        }
        if (this.mInterpolator != null) {
            str2 = str2 + "interp(" + this.mInterpolator + ") ";
        }
        if (this.mTargetIds.size() <= 0 && this.mTargets.size() <= 0) {
            return str2;
        }
        String str3 = str2 + "tgts(";
        if (this.mTargetIds.size() > 0) {
            for (int i10 = 0; i10 < this.mTargetIds.size(); i10++) {
                if (i10 > 0) {
                    str3 = str3 + ", ";
                }
                str3 = str3 + this.mTargetIds.get(i10);
            }
        }
        if (this.mTargets.size() > 0) {
            for (int i11 = 0; i11 < this.mTargets.size(); i11++) {
                if (i11 > 0) {
                    str3 = str3 + ", ";
                }
                str3 = str3 + this.mTargets.get(i11);
            }
        }
        return str3 + ")";
    }

    public o addTarget(String str) {
        if (this.mTargetNames == null) {
            this.mTargetNames = new ArrayList<>();
        }
        this.mTargetNames.add(str);
        return this;
    }

    public o excludeChildren(Class<?> cls, boolean z10) {
        this.mTargetTypeChildExcludes = excludeType(this.mTargetTypeChildExcludes, cls, z10);
        return this;
    }

    public o excludeTarget(String str, boolean z10) {
        this.mTargetNameExcludes = excludeObject(this.mTargetNameExcludes, str, z10);
        return this;
    }

    public o removeTarget(String str) {
        ArrayList<String> arrayList = this.mTargetNames;
        if (arrayList != null) {
            arrayList.remove(str);
        }
        return this;
    }

    public o excludeTarget(Class<?> cls, boolean z10) {
        this.mTargetTypeExcludes = excludeType(this.mTargetTypeExcludes, cls, z10);
        return this;
    }

    public o removeTarget(Class<?> cls) {
        ArrayList<Class<?>> arrayList = this.mTargetTypes;
        if (arrayList != null) {
            arrayList.remove(cls);
        }
        return this;
    }

    public o addTarget(Class<?> cls) {
        if (this.mTargetTypes == null) {
            this.mTargetTypes = new ArrayList<>();
        }
        this.mTargetTypes.add(cls);
        return this;
    }

    @SuppressLint({"RestrictedApi"})
    public o(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, n.f15788c);
        XmlResourceParser xmlResourceParser = (XmlResourceParser) attributeSet;
        long k10 = g0.i.k(obtainStyledAttributes, xmlResourceParser, "duration", 1, -1);
        if (k10 >= 0) {
            setDuration(k10);
        }
        long k11 = g0.i.k(obtainStyledAttributes, xmlResourceParser, "startDelay", 2, -1);
        if (k11 > 0) {
            setStartDelay(k11);
        }
        int l10 = g0.i.l(obtainStyledAttributes, xmlResourceParser, "interpolator", 0, 0);
        if (l10 > 0) {
            setInterpolator(AnimationUtils.loadInterpolator(context, l10));
        }
        String m10 = g0.i.m(obtainStyledAttributes, xmlResourceParser, "matchOrder", 3);
        if (m10 != null) {
            setMatchOrder(parseMatchOrder(m10));
        }
        obtainStyledAttributes.recycle();
    }
}
