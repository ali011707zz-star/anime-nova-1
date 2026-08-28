package x1;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* compiled from: TransitionValues.java */
/* loaded from: classes.dex */
public class u {

    /* renamed from: b, reason: collision with root package name */
    public View f15825b;

    /* renamed from: a, reason: collision with root package name */
    public final Map<String, Object> f15824a = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList<o> f15826c = new ArrayList<>();

    @Deprecated
    public u() {
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        return this.f15825b == uVar.f15825b && this.f15824a.equals(uVar.f15824a);
    }

    public int hashCode() {
        return (this.f15825b.hashCode() * 31) + this.f15824a.hashCode();
    }

    public String toString() {
        String str = (("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n") + "    view = " + this.f15825b + "\n") + "    values:";
        for (String str2 : this.f15824a.keySet()) {
            str = str + "    " + str2 + ": " + this.f15824a.get(str2) + "\n";
        }
        return str;
    }

    public u(View view) {
        this.f15825b = view;
    }
}
