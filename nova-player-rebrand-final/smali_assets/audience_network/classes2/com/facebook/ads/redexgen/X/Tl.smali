.class public final Lcom/facebook/ads/redexgen/X/Tl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Tn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccelerometerEventListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Tk;)V
    .locals 0

    .line 66036
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Tl;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 66037
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    .line 66038
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tn;->A0D([F)[F

    .line 66039
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Tn;->A04()V

    .line 66040
    return-void
.end method
