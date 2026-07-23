.class public final Lcom/facebook/ads/redexgen/X/n2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/G5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/G7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayHelperV16"
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final A00:Landroid/view/WindowManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/n2;->A02()V

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowManager;)V
    .locals 0

    .line 99797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99798
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/n2;->A00:Landroid/view/WindowManager;

    .line 99799
    return-void
.end method

.method public static A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/n2;
    .locals 3

    .line 99800
    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/n2;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 99801
    .local v0, "windowManager":Landroid/view/WindowManager;
    if-eqz v1, :cond_0

    new-instance v0, Lcom/facebook/ads/redexgen/X/n2;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/n2;-><init>(Landroid/view/WindowManager;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/n2;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x73

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/n2;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x7t
        -0x15t
        -0x10t
        -0x1at
        -0xft
        -0x7t
    .end array-data
.end method


# virtual methods
.method public final AHX(Lcom/facebook/ads/redexgen/X/G4;)V
    .locals 1

    .line 99802
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/n2;->A00:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/G4;->ADd(Landroid/view/Display;)V

    .line 99803
    return-void
.end method

.method public final AKW()V
    .locals 0

    .line 99804
    return-void
.end method
