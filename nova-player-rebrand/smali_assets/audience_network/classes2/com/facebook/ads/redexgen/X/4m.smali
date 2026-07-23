.class public abstract Lcom/facebook/ads/redexgen/X/4m;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api31"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/4l;
    }
.end annotation


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4m;->A01()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4m;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x78

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4m;->A00:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0xdt
        -0x15t
        -0xet
        -0xft
        -0x18t
    .end array-data
.end method

.method public static A02(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/4p;)V
    .locals 3

    .line 12407
    :try_start_0
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4m;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 12408
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 12409
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    new-instance v1, Lcom/facebook/ads/redexgen/X/4l;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/4l;-><init>(Lcom/facebook/ads/redexgen/X/4p;)V

    .line 12410
    .local v1, "callback":Lcom/facebook/ads/redexgen/X/4l;
    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 12411
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12412
    .local v0, "e":Ljava/lang/RuntimeException;
    :catch_0
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/4p;->A08(Lcom/facebook/ads/redexgen/X/4p;I)V

    .line 12413
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method
