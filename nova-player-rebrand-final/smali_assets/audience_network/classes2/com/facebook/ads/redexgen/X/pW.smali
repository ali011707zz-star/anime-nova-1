.class public final Lcom/facebook/ads/redexgen/X/pW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/24;


# static fields
.field public static A04:[Ljava/lang/String;

.field public static final A05:Lcom/facebook/ads/redexgen/X/23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/23<",
            "Lcom/facebook/ads/redexgen/X/pW;",
            ">;"
        }
    .end annotation
.end field

.field public static final A06:Lcom/facebook/ads/redexgen/X/pW;

.field public static final A07:Ljava/lang/String;

.field public static final A08:Ljava/lang/String;

.field public static final A09:Ljava/lang/String;

.field public static final A0A:Ljava/lang/String;


# instance fields
.field public final A00:F

.field public final A01:I

.field public final A02:I

.field public final A03:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3371
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "W5WZRfo3traFBsuJqUeacov"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "AOz8vYfc0kUMyRrWtsrS4pOQsYE8BP6P"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ocEUeDJ9UZl7Q6o8h21wMsDJowBHj84j"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "pkgO1YjXdbsvKDgws3J49uWJB6yyqkG7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "vCvp8tg1JPxrxhdMnot9YI84PFBkssaD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Dazl9IXOnyCH5QLsvPseWpscLh5D5M0t"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ZYJ1zYUUdaXBOvkE2t6KLICz8MhT9p2M"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ySOVjFSAiUWhoASiDo2jZct"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/pW;->A04:[Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/pW;

    invoke-direct {v0, v1, v1}, Lcom/facebook/ads/redexgen/X/pW;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/pW;->A06:Lcom/facebook/ads/redexgen/X/pW;

    .line 3372
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/pW;->A0A:Ljava/lang/String;

    .line 3373
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/pW;->A07:Ljava/lang/String;

    .line 3374
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/pW;->A09:Ljava/lang/String;

    .line 3375
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/pW;->A08:Ljava/lang/String;

    .line 3376
    new-instance v0, Lcom/facebook/ads/redexgen/X/pX;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/pX;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/pW;->A05:Lcom/facebook/ads/redexgen/X/23;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 104309
    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/pW;-><init>(IIIF)V

    .line 104310
    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 0

    .line 104311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104312
    iput p1, p0, Lcom/facebook/ads/redexgen/X/pW;->A03:I

    .line 104313
    iput p2, p0, Lcom/facebook/ads/redexgen/X/pW;->A01:I

    .line 104314
    iput p3, p0, Lcom/facebook/ads/redexgen/X/pW;->A02:I

    .line 104315
    iput p4, p0, Lcom/facebook/ads/redexgen/X/pW;->A00:F

    .line 104316
    return-void
.end method

.method public static synthetic A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/pW;
    .locals 5

    .line 104317
    sget-object v0, Lcom/facebook/ads/redexgen/X/pW;->A0A:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 104318
    .local v0, "width":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/pW;->A07:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 104319
    .local v2, "height":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/pW;->A09:Ljava/lang/String;

    .line 104320
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 104321
    .local v1, "unappliedRotationDegrees":I
    sget-object v1, Lcom/facebook/ads/redexgen/X/pW;->A08:Ljava/lang/String;

    .line 104322
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 104323
    .local v3, "pixelWidthHeightRatio":F
    new-instance v0, Lcom/facebook/ads/redexgen/X/pW;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/pW;-><init>(IIIF)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 104324
    const/4 v4, 0x1

    if-ne p0, p1, :cond_0

    .line 104325
    return v4

    .line 104326
    :cond_0
    instance-of v3, p1, Lcom/facebook/ads/redexgen/X/pW;

    sget-object v2, Lcom/facebook/ads/redexgen/X/pW;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/pW;->A04:[Ljava/lang/String;

    const-string v1, "xwJKUsQcskzDCgeEWIG9ozPdTsTzWcW9"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "cRblKPLDWf1oyG1RJoVr7n5QNKGN7idl"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v0, 0x0

    if-eqz v3, :cond_2

    .line 104327
    check-cast p1, Lcom/facebook/ads/redexgen/X/pW;

    .line 104328
    .local v1, "other":Lcom/facebook/ads/redexgen/X/pW;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/pW;->A03:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/pW;->A03:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/pW;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/pW;->A01:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/pW;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/pW;->A02:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/pW;->A00:F

    iget v0, p1, Lcom/facebook/ads/redexgen/X/pW;->A00:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 104329
    .end local v1    # "other":Lcom/facebook/ads/redexgen/X/pW;
    :cond_2
    return v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    .line 104330
    const/4 v0, 0x7

    .line 104331
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/pW;->A03:I

    add-int/2addr v1, v0

    .line 104332
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/pW;->A01:I

    add-int/2addr v1, v0

    .line 104333
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/pW;->A02:I

    add-int/2addr v1, v0

    .line 104334
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/pW;->A00:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    .line 104335
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v1
.end method
