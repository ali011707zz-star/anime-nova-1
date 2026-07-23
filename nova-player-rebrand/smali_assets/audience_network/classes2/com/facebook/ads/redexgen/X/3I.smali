.class public final Lcom/facebook/ads/redexgen/X/3I;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mp4aObjectType"
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 151
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jcH3QedMT4AOuWF0dI0CUNmRbWatFwqc"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BukjA5q92pLRFUvfe5dIWww2QfAyf027"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "2uAc"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VCNYtziwo5GFVqBfG9UtgC4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "uqwM7jU8RkmJgjVhRwxT6hUUHIdkl0iL"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Q65tZvOlW8keeJKkiK5GhNEs1Q8ndQa2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "6cXZOFD424WlVLtANVdUhxfL6A7UpvYs"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6V4zSnW4jXU8inGpzvmCFDVdVI7aZE3z"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3I;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 10255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10256
    iput p1, p0, Lcom/facebook/ads/redexgen/X/3I;->A01:I

    .line 10257
    iput p2, p0, Lcom/facebook/ads/redexgen/X/3I;->A00:I

    .line 10258
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 4

    .line 10259
    iget v0, p0, Lcom/facebook/ads/redexgen/X/3I;->A00:I

    sparse-switch v0, :sswitch_data_0

    .line 10260
    const/4 v0, 0x0

    return v0

    .line 10261
    :sswitch_0
    const/16 v0, 0x10

    return v0

    .line 10262
    :sswitch_1
    const/16 v0, 0xc

    return v0

    .line 10263
    :sswitch_2
    const/16 v3, 0xf

    sget-object v1, Lcom/facebook/ads/redexgen/X/3I;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6a

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/3I;->A02:[Ljava/lang/String;

    const-string v1, "G1vh"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return v3

    .line 10264
    :sswitch_3
    const/high16 v0, 0x40000000    # 2.0f

    return v0

    .line 10265
    :sswitch_4
    const/16 v0, 0xb

    return v0

    .line 10266
    :sswitch_5
    const/16 v0, 0xa

    return v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_5
        0x5 -> :sswitch_4
        0x16 -> :sswitch_3
        0x17 -> :sswitch_2
        0x1d -> :sswitch_1
        0x2a -> :sswitch_0
    .end sparse-switch
.end method
