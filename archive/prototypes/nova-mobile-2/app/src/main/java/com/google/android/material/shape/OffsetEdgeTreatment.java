package com.google.android.material.shape;

/* loaded from: classes.dex */
public final class OffsetEdgeTreatment extends EdgeTreatment {
    private final float offset;
    private final EdgeTreatment other;

    public OffsetEdgeTreatment(EdgeTreatment edgeTreatment, float f10) {
        this.other = edgeTreatment;
        this.offset = f10;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public boolean forceIntersection() {
        return this.other.forceIntersection();
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public void getEdgePath(float f10, float f11, float f12, ShapePath shapePath) {
        this.other.getEdgePath(f10, f11 - this.offset, f12, shapePath);
    }
}
