.class public final Lcom/facebook/ads/redexgen/X/VU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Vz;->A0E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Vz;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2064
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "BENQAquhgvj7TT9"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "G4ABWHEO8pFoECzre8aPRkd5RqzaS810"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "PI8RZp2k0CYdM"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "EmvTCi8E1ni5QktN6f"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "uKZwthLDSYADW2ME8E7na2CL49A5zEt8"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "f3ahGFeoLQ7BDTppBYhbDWzCsZGogVaH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wyETLpONaJd07JaZyOo"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "wX7oH8VfboeBvBElZn"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VU;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Vz;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 69412
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VU;->A00:Lcom/facebook/ads/redexgen/X/Vz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 69413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A00:Lcom/facebook/ads/redexgen/X/Vz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vz;->A07(Lcom/facebook/ads/redexgen/X/Vz;)Lcom/facebook/ads/redexgen/X/6r;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/VU;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/VU;->A01:[Ljava/lang/String;

    const-string v1, "VIP8zqVOsYs7o10MZlA"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ne v3, v4, :cond_0

    .line 69414
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A00:Lcom/facebook/ads/redexgen/X/Vz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vz;->A07(Lcom/facebook/ads/redexgen/X/Vz;)Lcom/facebook/ads/redexgen/X/6r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6r;->A0s()V

    .line 69415
    :cond_0
    return v4

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
