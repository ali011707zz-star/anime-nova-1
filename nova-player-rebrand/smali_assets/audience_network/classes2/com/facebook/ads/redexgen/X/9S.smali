.class public abstract Lcom/facebook/ads/redexgen/X/9S;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api23"
.end annotation


# direct methods
.method public static A00(Lcom/facebook/ads/redexgen/X/8z;Ljava/lang/Object;)V
    .locals 0

    .line 24091
    check-cast p1, Landroid/media/AudioDeviceInfo;

    .line 24092
    .local p0, "audioDeviceInfo":Landroid/media/AudioDeviceInfo;
    invoke-interface {p0, p1}, Lcom/facebook/ads/redexgen/X/8z;->AJi(Landroid/media/AudioDeviceInfo;)V

    .line 24093
    return-void
.end method
