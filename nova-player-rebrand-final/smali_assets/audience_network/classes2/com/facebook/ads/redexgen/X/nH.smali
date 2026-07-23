.class public final Lcom/facebook/ads/redexgen/X/nH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/24;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectionOverride"
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;

.field public static final A05:Lcom/facebook/ads/redexgen/X/23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/23<",
            "Lcom/facebook/ads/redexgen/X/nH;",
            ">;"
        }
    .end annotation
.end field

.field public static final A06:Ljava/lang/String;

.field public static final A07:Ljava/lang/String;

.field public static final A08:Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3291
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "0EeRaofkOnG82pPuB"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "jcjJv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "T4n"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "y6LXg9kPowsRJwalOEx6K"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "cypgHvauDeb"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "sGCac32Lryl6ta5A9qPel0ZSNDpSTc"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mAWrtqCYM7sM8yItQ0fM"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "xdW2EE8FfL1ekapcbmlM6yOkR5Ux1S1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/nH;->A04:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/nH;->A06:Ljava/lang/String;

    .line 3292
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/nH;->A07:Ljava/lang/String;

    .line 3293
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/nH;->A08:Ljava/lang/String;

    .line 3294
    new-instance v0, Lcom/facebook/ads/redexgen/X/nI;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/nI;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/nH;->A05:Lcom/facebook/ads/redexgen/X/23;

    return-void
.end method

.method public constructor <init>(I[II)V
    .locals 1

    .line 100290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100291
    iput p1, p0, Lcom/facebook/ads/redexgen/X/nH;->A00:I

    .line 100292
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nH;->A03:[I

    .line 100293
    array-length v0, p2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/nH;->A01:I

    .line 100294
    iput p3, p0, Lcom/facebook/ads/redexgen/X/nH;->A02:I

    .line 100295
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nH;->A03:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 100296
    return-void
.end method

.method public static synthetic A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/nH;
    .locals 4

    .line 100297
    sget-object v0, Lcom/facebook/ads/redexgen/X/nH;->A06:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 100298
    .local v0, "groupIndex":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/nH;->A07:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 100299
    .local v2, "tracks":[I
    sget-object v0, Lcom/facebook/ads/redexgen/X/nH;->A08:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 100300
    .local v1, "trackType":I
    if-ltz v3, :cond_0

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 100301
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100302
    new-instance v0, Lcom/facebook/ads/redexgen/X/nH;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/nH;-><init>(I[II)V

    return-object v0

    .line 100303
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .line 100304
    const/4 v4, 0x1

    if-ne p0, p1, :cond_0

    .line 100305
    return v4

    .line 100306
    :cond_0
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/nH;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/nH;->A04:[Ljava/lang/String;

    const-string v1, "RoyHwRFBbL3TyB1YuYs"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 100307
    .end local v2
    :cond_1
    return v3

    .line 100308
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/nH;

    .line 100309
    .local v2, "other":Lcom/facebook/ads/redexgen/X/nH;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/nH;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/nH;->A00:I

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nH;->A03:[I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/nH;->A03:[I

    .line 100310
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/nH;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/nH;->A02:I

    if-ne v1, v0, :cond_3

    .line 100311
    :goto_0
    return v4

    .line 100312
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    .line 100313
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nH;->A00:I

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nH;->A03:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    .line 100314
    .local v0, "hash":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nH;->A02:I

    add-int/2addr v1, v0

    return v1
.end method
