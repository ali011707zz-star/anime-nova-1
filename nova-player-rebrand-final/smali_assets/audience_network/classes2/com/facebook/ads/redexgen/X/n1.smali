.class public final Lcom/facebook/ads/redexgen/X/n1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/G5;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/G7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayHelperV17"
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/G4;

.field public final A01:Landroid/hardware/display/DisplayManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/n1;->A03()V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/display/DisplayManager;)V
    .locals 0

    .line 99779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99780
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/n1;->A01:Landroid/hardware/display/DisplayManager;

    .line 99781
    return-void
.end method

.method private A00()Landroid/view/Display;
    .locals 2

    .line 99782
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/n1;->A01:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public static A01(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/n1;
    .locals 3

    .line 99783
    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/n1;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 99784
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    if-eqz v1, :cond_0

    new-instance v0, Lcom/facebook/ads/redexgen/X/n1;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/n1;-><init>(Landroid/hardware/display/DisplayManager;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/n1;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/n1;->A02:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xft
        0x14t
        0x1et
        0x1bt
        0x17t
        0xct
        0x24t
    .end array-data
.end method


# virtual methods
.method public final AHX(Lcom/facebook/ads/redexgen/X/G4;)V
    .locals 2

    .line 99785
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/n1;->A00:Lcom/facebook/ads/redexgen/X/G4;

    .line 99786
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/n1;->A01:Landroid/hardware/display/DisplayManager;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5C;->A0Y()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 99787
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/n1;->A00()Landroid/view/Display;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/G4;->ADd(Landroid/view/Display;)V

    .line 99788
    return-void
.end method

.method public final AKW()V
    .locals 1

    .line 99789
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/n1;->A01:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 99790
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/n1;->A00:Lcom/facebook/ads/redexgen/X/G4;

    .line 99791
    return-void
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    .line 99792
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 2

    .line 99793
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/n1;->A00:Lcom/facebook/ads/redexgen/X/G4;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 99794
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/n1;->A00:Lcom/facebook/ads/redexgen/X/G4;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/n1;->A00()Landroid/view/Display;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/G4;->ADd(Landroid/view/Display;)V

    .line 99795
    :cond_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 99796
    return-void
.end method
