package x1;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.util.Property;

/* compiled from: PathProperty.java */
/* loaded from: classes.dex */
public class h<T> extends Property<T, Float> {

    /* renamed from: a, reason: collision with root package name */
    public final Property<T, PointF> f15747a;

    /* renamed from: b, reason: collision with root package name */
    public final PathMeasure f15748b;

    /* renamed from: c, reason: collision with root package name */
    public final float f15749c;

    /* renamed from: d, reason: collision with root package name */
    public final float[] f15750d;

    /* renamed from: e, reason: collision with root package name */
    public final PointF f15751e;

    /* renamed from: f, reason: collision with root package name */
    public float f15752f;

    public h(Property<T, PointF> property, Path path) {
        super(Float.class, property.getName());
        this.f15750d = new float[2];
        this.f15751e = new PointF();
        this.f15747a = property;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        this.f15748b = pathMeasure;
        this.f15749c = pathMeasure.getLength();
    }

    @Override // android.util.Property
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Float get(T t10) {
        return Float.valueOf(this.f15752f);
    }

    @Override // android.util.Property
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void set(T t10, Float f10) {
        this.f15752f = f10.floatValue();
        this.f15748b.getPosTan(this.f15749c * f10.floatValue(), this.f15750d, null);
        PointF pointF = this.f15751e;
        float[] fArr = this.f15750d;
        pointF.x = fArr[0];
        pointF.y = fArr[1];
        this.f15747a.set(t10, pointF);
    }
}
