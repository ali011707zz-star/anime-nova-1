.class public final Lcom/facebook/ads/redexgen/X/21;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:F

.field public final A01:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 121
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ldLt7Twnv3B7KUI0Ilt0EdHHn77Qhign"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kd1rakMki2zmKhQ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HVn8QFF1K6iTD0hJ0RaSWmMMLwU9Qt3O"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "lH7qRM6AdNX9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "AM83Z8btvw3SuqGtiKSkY6vTX"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2HQ9THQlxaSsRJLEMXyqG3P4roslQgZv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "TC2I2mgRjWVcD4ZdWmeiP13Fm"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "xcO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/21;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 8774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8775
    iput p1, p0, Lcom/facebook/ads/redexgen/X/21;->A01:I

    .line 8776
    iput p2, p0, Lcom/facebook/ads/redexgen/X/21;->A00:F

    .line 8777
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 8778
    const/4 v3, 0x1

    if-ne p0, p1, :cond_0

    .line 8779
    return v3

    .line 8780
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 8781
    .end local v2
    :cond_1
    return v2

    .line 8782
    :cond_2
    sget-object v1, Lcom/facebook/ads/redexgen/X/21;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/21;->A02:[Ljava/lang/String;

    const-string v1, "I06pAxPjKvEkBpORKzCyZVvNnfHT6Ife"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "4aBlntKTp4ZZaeZTKwlwh44AwX56wdFL"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    check-cast p1, Lcom/facebook/ads/redexgen/X/21;

    .line 8783
    .local v2, "auxEffectInfo":Lcom/facebook/ads/redexgen/X/21;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/21;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/21;->A01:I

    if-ne v1, v0, :cond_3

    iget v1, p1, Lcom/facebook/ads/redexgen/X/21;->A00:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A00:F

    .line 8784
    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_3

    .line 8785
    :goto_0
    return v3

    .line 8786
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    .line 8787
    const/16 v0, 0x11

    .line 8788
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A01:I

    add-int/2addr v1, v0

    .line 8789
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/21;->A00:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    .line 8790
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v1
.end method
