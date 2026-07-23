.class public final Lcom/facebook/ads/redexgen/X/jf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/b8;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/je;->A0O(Landroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/je;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/UK;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3130
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "JSPFN54Hhto2krin5AXlvtsoUga8f3VN"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "TJUa2zQB5Sn7m4BW7AASunbvdXy8BM9T"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6VrbDJWlH8cGoKCi2T6pLfOeL4USL1Zo"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "WDYRHsse8CkpPKHQRRahwXj8yQt26EEK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "k2HMJqY12uG3JOOYcYA0rukTMokxTs2q"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JFWFpGWs655aVrqtTe7kn6NDgYp0Sw9v"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lGCVru2Pt3eCAyGNCmn4MueAiTs1TFsk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "y56t9BBTSrVMdPLNMlUp"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/jf;->A03:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/je;ILcom/facebook/ads/redexgen/X/UK;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88594
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/jf;->A01:Lcom/facebook/ads/redexgen/X/je;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/jf;->A00:I

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/jf;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AE7(Lcom/facebook/ads/redexgen/X/b7;)V
    .locals 3

    .line 88595
    iget v0, p0, Lcom/facebook/ads/redexgen/X/jf;->A00:I

    if-nez v0, :cond_0

    .line 88596
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/jf;->A02:Lcom/facebook/ads/redexgen/X/UK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/jf;->A01:Lcom/facebook/ads/redexgen/X/je;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/je;->A03(Lcom/facebook/ads/redexgen/X/je;)Lcom/facebook/ads/redexgen/X/fo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/UK;->A1k(Lcom/facebook/ads/redexgen/X/fo;)V

    .line 88597
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/jf;->A02:Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/b7;->A00()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/UK;->A1o(ZZ)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/jf;->A03:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_2

    .line 88598
    sget-object v2, Lcom/facebook/ads/redexgen/X/jf;->A03:[Ljava/lang/String;

    const-string v1, "iRqOIqAZ6TOb0gQaJ743l8NrEMVcYXI5"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "jzrwvLgYYMFr4hfD5uj52ory38hy0fYg"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-void

    .line 88599
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
