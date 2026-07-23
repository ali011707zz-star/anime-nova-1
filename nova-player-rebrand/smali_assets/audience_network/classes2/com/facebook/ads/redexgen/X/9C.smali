.class public abstract Lcom/facebook/ads/redexgen/X/9C;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/oM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api23"
.end annotation


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 541
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "HyVFju0jW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "C5fZxe"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VQC7lBe8X0XIyVl71uwsToKAMftvX"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qc4cjMrzTMcJnGZRxAG6ibX2mVWthZMP"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3OzdIJ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "XboRF4F7pcuh5Lnm7QRi4zxVRlLSdFic"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "8bcueyNysUpicTQfAxYptjP2NzHtyKr1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9C;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static A00(Landroid/media/AudioTrack;Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 1

    .line 23867
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 23868
    :goto_0
    invoke-virtual {p0, v0}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    sget-object p1, Lcom/facebook/ads/redexgen/X/9C;->A00:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object p0, p1, v0

    const/4 v0, 0x4

    aget-object p1, p1, v0

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq p0, v0, :cond_1

    .line 23869
    sget-object p1, Lcom/facebook/ads/redexgen/X/9C;->A00:[Ljava/lang/String;

    const-string p0, "oWCieRMjyh4ofIxIc5um83fUD9gSksXl"

    const/4 v0, 0x2

    aput-object p0, p1, v0

    return-void

    .line 23870
    :cond_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9E;->A00:Landroid/media/AudioDeviceInfo;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
