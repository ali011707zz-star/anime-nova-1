package com.google.android.material.shape;

/* loaded from: classes.dex */
public final class MarkerEdgeTreatment extends EdgeTreatment {
    private final float radius;

    public MarkerEdgeTreatment(float f10) {
        this.radius = f10 - 0.001f;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public boolean forceIntersection() {
        return true;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public void getEdgePath(float f10, float f11, float f12, ShapePath shapePath) {
        double d10 = this.radius;
        double sqrt = Math.sqrt(2.0d);
        Double.isNaN(d10);
        float f13 = (float) ((d10 * sqrt) / 2.0d);
        float sqrt2 = (float) Math.sqrt(Math.pow(this.radius, 2.0d) - Math.pow(f13, 2.0d));
        double d11 = this.radius;
        double sqrt3 = Math.sqrt(2.0d);
        Double.isNaN(d11);
        double d12 = d11 * sqrt3;
        double d13 = this.radius;
        Double.isNaN(d13);
        shapePath.reset(f11 - f13, ((float) (-(d12 - d13))) + sqrt2);
        double d14 = this.radius;
        double sqrt4 = Math.sqrt(2.0d);
        Double.isNaN(d14);
        double d15 = d14 * sqrt4;
        double d16 = this.radius;
        Double.isNaN(d16);
        shapePath.lineTo(f11, (float) (-(d15 - d16)));
        double d17 = this.radius;
        double sqrt5 = Math.sqrt(2.0d);
        Double.isNaN(d17);
        double d18 = d17 * sqrt5;
        double d19 = this.radius;
        Double.isNaN(d19);
        shapePath.lineTo(f11 + f13, ((float) (-(d18 - d19))) + sqrt2);
    }
}
