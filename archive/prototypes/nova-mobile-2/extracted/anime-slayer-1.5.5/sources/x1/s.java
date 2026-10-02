package x1;

import android.animation.TimeInterpolator;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
import x1.o;

/* compiled from: TransitionSet.java */
/* loaded from: classes.dex */
public class s extends o {

    /* renamed from: h, reason: collision with root package name */
    public int f15815h;

    /* renamed from: f, reason: collision with root package name */
    public ArrayList<o> f15813f = new ArrayList<>();

    /* renamed from: g, reason: collision with root package name */
    public boolean f15814g = true;

    /* renamed from: i, reason: collision with root package name */
    public boolean f15816i = false;

    /* renamed from: j, reason: collision with root package name */
    public int f15817j = 0;

    /* compiled from: TransitionSet.java */
    /* loaded from: classes.dex */
    public class a extends p {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ o f15818a;

        public a(o oVar) {
            this.f15818a = oVar;
        }

        @Override // x1.o.g
        public void onTransitionEnd(o oVar) {
            this.f15818a.runAnimators();
            oVar.removeListener(this);
        }
    }

    /* compiled from: TransitionSet.java */
    /* loaded from: classes.dex */
    public static class b extends p {

        /* renamed from: a, reason: collision with root package name */
        public s f15820a;

        public b(s sVar) {
            this.f15820a = sVar;
        }

        @Override // x1.o.g
        public void onTransitionEnd(o oVar) {
            s sVar = this.f15820a;
            int i10 = sVar.f15815h - 1;
            sVar.f15815h = i10;
            if (i10 == 0) {
                sVar.f15816i = false;
                sVar.end();
            }
            oVar.removeListener(this);
        }

        @Override // x1.p, x1.o.g
        public void onTransitionStart(o oVar) {
            s sVar = this.f15820a;
            if (sVar.f15816i) {
                return;
            }
            sVar.start();
            this.f15820a.f15816i = true;
        }
    }

    @Override // x1.o
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public s addListener(o.g gVar) {
        return (s) super.addListener(gVar);
    }

    @Override // x1.o
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public s addTarget(int i10) {
        for (int i11 = 0; i11 < this.f15813f.size(); i11++) {
            this.f15813f.get(i11).addTarget(i10);
        }
        return (s) super.addTarget(i10);
    }

    @Override // x1.o
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public s addTarget(View view) {
        for (int i10 = 0; i10 < this.f15813f.size(); i10++) {
            this.f15813f.get(i10).addTarget(view);
        }
        return (s) super.addTarget(view);
    }

    @Override // x1.o
    public void cancel() {
        super.cancel();
        int size = this.f15813f.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f15813f.get(i10).cancel();
        }
    }

    @Override // x1.o
    public void captureEndValues(u uVar) {
        if (isValidTarget(uVar.f15825b)) {
            Iterator<o> it2 = this.f15813f.iterator();
            while (it2.hasNext()) {
                o next = it2.next();
                if (next.isValidTarget(uVar.f15825b)) {
                    next.captureEndValues(uVar);
                    uVar.f15826c.add(next);
                }
            }
        }
    }

    @Override // x1.o
    public void capturePropagationValues(u uVar) {
        super.capturePropagationValues(uVar);
        int size = this.f15813f.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f15813f.get(i10).capturePropagationValues(uVar);
        }
    }

    @Override // x1.o
    public void captureStartValues(u uVar) {
        if (isValidTarget(uVar.f15825b)) {
            Iterator<o> it2 = this.f15813f.iterator();
            while (it2.hasNext()) {
                o next = it2.next();
                if (next.isValidTarget(uVar.f15825b)) {
                    next.captureStartValues(uVar);
                    uVar.f15826c.add(next);
                }
            }
        }
    }

    @Override // x1.o
    public void createAnimators(ViewGroup viewGroup, v vVar, v vVar2, ArrayList<u> arrayList, ArrayList<u> arrayList2) {
        long startDelay = getStartDelay();
        int size = this.f15813f.size();
        for (int i10 = 0; i10 < size; i10++) {
            o oVar = this.f15813f.get(i10);
            if (startDelay > 0 && (this.f15814g || i10 == 0)) {
                long startDelay2 = oVar.getStartDelay();
                if (startDelay2 > 0) {
                    oVar.setStartDelay(startDelay2 + startDelay);
                } else {
                    oVar.setStartDelay(startDelay);
                }
            }
            oVar.createAnimators(viewGroup, vVar, vVar2, arrayList, arrayList2);
        }
    }

    @Override // x1.o
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public s addTarget(Class<?> cls) {
        for (int i10 = 0; i10 < this.f15813f.size(); i10++) {
            this.f15813f.get(i10).addTarget(cls);
        }
        return (s) super.addTarget(cls);
    }

    @Override // x1.o
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public s addTarget(String str) {
        for (int i10 = 0; i10 < this.f15813f.size(); i10++) {
            this.f15813f.get(i10).addTarget(str);
        }
        return (s) super.addTarget(str);
    }

    @Override // x1.o
    public o excludeTarget(View view, boolean z10) {
        for (int i10 = 0; i10 < this.f15813f.size(); i10++) {
            this.f15813f.get(i10).excludeTarget(view, z10);
        }
        return super.excludeTarget(view, z10);
    }

    public s f(o oVar) {
        g(oVar);
        long j10 = this.mDuration;
        if (j10 >= 0) {
            oVar.setDuration(j10);
        }
        if ((this.f15817j & 1) != 0) {
            oVar.setInterpolator(getInterpolator());
        }
        if ((this.f15817j & 2) != 0) {
            oVar.setPropagation(getPropagation());
        }
        if ((this.f15817j & 4) != 0) {
            oVar.setPathMotion(getPathMotion());
        }
        if ((this.f15817j & 8) != 0) {
            oVar.setEpicenterCallback(getEpicenterCallback());
        }
        return this;
    }

    @Override // x1.o
    public void forceToEnd(ViewGroup viewGroup) {
        super.forceToEnd(viewGroup);
        int size = this.f15813f.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f15813f.get(i10).forceToEnd(viewGroup);
        }
    }

    public final void g(o oVar) {
        this.f15813f.add(oVar);
        oVar.mParent = this;
    }

    public o h(int i10) {
        if (i10 < 0 || i10 >= this.f15813f.size()) {
            return null;
        }
        return this.f15813f.get(i10);
    }

    public int i() {
        return this.f15813f.size();
    }

    @Override // x1.o
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public s removeListener(o.g gVar) {
        return (s) super.removeListener(gVar);
    }

    @Override // x1.o
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public s removeTarget(int i10) {
        for (int i11 = 0; i11 < this.f15813f.size(); i11++) {
            this.f15813f.get(i11).removeTarget(i10);
        }
        return (s) super.removeTarget(i10);
    }

    @Override // x1.o
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public s removeTarget(View view) {
        for (int i10 = 0; i10 < this.f15813f.size(); i10++) {
            this.f15813f.get(i10).removeTarget(view);
        }
        return (s) super.removeTarget(view);
    }

    @Override // x1.o
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public s removeTarget(Class<?> cls) {
        for (int i10 = 0; i10 < this.f15813f.size(); i10++) {
            this.f15813f.get(i10).removeTarget(cls);
        }
        return (s) super.removeTarget(cls);
    }

    @Override // x1.o
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public s removeTarget(String str) {
        for (int i10 = 0; i10 < this.f15813f.size(); i10++) {
            this.f15813f.get(i10).removeTarget(str);
        }
        return (s) super.removeTarget(str);
    }

    public s o(o oVar) {
        this.f15813f.remove(oVar);
        oVar.mParent = null;
        return this;
    }

    @Override // x1.o
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public s setDuration(long j10) {
        ArrayList<o> arrayList;
        super.setDuration(j10);
        if (this.mDuration >= 0 && (arrayList = this.f15813f) != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f15813f.get(i10).setDuration(j10);
            }
        }
        return this;
    }

    @Override // x1.o
    public void pause(View view) {
        super.pause(view);
        int size = this.f15813f.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f15813f.get(i10).pause(view);
        }
    }

    @Override // x1.o
    /* renamed from: q, reason: merged with bridge method [inline-methods] */
    public s setInterpolator(TimeInterpolator timeInterpolator) {
        this.f15817j |= 1;
        ArrayList<o> arrayList = this.f15813f;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f15813f.get(i10).setInterpolator(timeInterpolator);
            }
        }
        return (s) super.setInterpolator(timeInterpolator);
    }

    public s r(int i10) {
        if (i10 == 0) {
            this.f15814g = true;
        } else if (i10 == 1) {
            this.f15814g = false;
        } else {
            throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + i10);
        }
        return this;
    }

    @Override // x1.o
    public void resume(View view) {
        super.resume(view);
        int size = this.f15813f.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f15813f.get(i10).resume(view);
        }
    }

    @Override // x1.o
    public void runAnimators() {
        if (this.f15813f.isEmpty()) {
            start();
            end();
            return;
        }
        u();
        if (!this.f15814g) {
            for (int i10 = 1; i10 < this.f15813f.size(); i10++) {
                this.f15813f.get(i10 - 1).addListener(new a(this.f15813f.get(i10)));
            }
            o oVar = this.f15813f.get(0);
            if (oVar != null) {
                oVar.runAnimators();
                return;
            }
            return;
        }
        Iterator<o> it2 = this.f15813f.iterator();
        while (it2.hasNext()) {
            it2.next().runAnimators();
        }
    }

    @Override // x1.o
    /* renamed from: s, reason: merged with bridge method [inline-methods] */
    public s setSceneRoot(ViewGroup viewGroup) {
        super.setSceneRoot(viewGroup);
        int size = this.f15813f.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f15813f.get(i10).setSceneRoot(viewGroup);
        }
        return this;
    }

    @Override // x1.o
    public void setCanRemoveViews(boolean z10) {
        super.setCanRemoveViews(z10);
        int size = this.f15813f.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f15813f.get(i10).setCanRemoveViews(z10);
        }
    }

    @Override // x1.o
    public void setEpicenterCallback(o.f fVar) {
        super.setEpicenterCallback(fVar);
        this.f15817j |= 8;
        int size = this.f15813f.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f15813f.get(i10).setEpicenterCallback(fVar);
        }
    }

    @Override // x1.o
    public void setPathMotion(g gVar) {
        super.setPathMotion(gVar);
        this.f15817j |= 4;
        if (this.f15813f != null) {
            for (int i10 = 0; i10 < this.f15813f.size(); i10++) {
                this.f15813f.get(i10).setPathMotion(gVar);
            }
        }
    }

    @Override // x1.o
    public void setPropagation(r rVar) {
        super.setPropagation(rVar);
        this.f15817j |= 2;
        int size = this.f15813f.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f15813f.get(i10).setPropagation(rVar);
        }
    }

    @Override // x1.o
    /* renamed from: t, reason: merged with bridge method [inline-methods] */
    public s setStartDelay(long j10) {
        return (s) super.setStartDelay(j10);
    }

    @Override // x1.o
    public String toString(String str) {
        String oVar = super.toString(str);
        for (int i10 = 0; i10 < this.f15813f.size(); i10++) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(oVar);
            sb2.append("\n");
            sb2.append(this.f15813f.get(i10).toString(str + "  "));
            oVar = sb2.toString();
        }
        return oVar;
    }

    public final void u() {
        b bVar = new b(this);
        Iterator<o> it2 = this.f15813f.iterator();
        while (it2.hasNext()) {
            it2.next().addListener(bVar);
        }
        this.f15815h = this.f15813f.size();
    }

    @Override // x1.o
    public o clone() {
        s sVar = (s) super.clone();
        sVar.f15813f = new ArrayList<>();
        int size = this.f15813f.size();
        for (int i10 = 0; i10 < size; i10++) {
            sVar.g(this.f15813f.get(i10).clone());
        }
        return sVar;
    }

    @Override // x1.o
    public o excludeTarget(String str, boolean z10) {
        for (int i10 = 0; i10 < this.f15813f.size(); i10++) {
            this.f15813f.get(i10).excludeTarget(str, z10);
        }
        return super.excludeTarget(str, z10);
    }

    @Override // x1.o
    public o excludeTarget(int i10, boolean z10) {
        for (int i11 = 0; i11 < this.f15813f.size(); i11++) {
            this.f15813f.get(i11).excludeTarget(i10, z10);
        }
        return super.excludeTarget(i10, z10);
    }

    @Override // x1.o
    public o excludeTarget(Class<?> cls, boolean z10) {
        for (int i10 = 0; i10 < this.f15813f.size(); i10++) {
            this.f15813f.get(i10).excludeTarget(cls, z10);
        }
        return super.excludeTarget(cls, z10);
    }
}
