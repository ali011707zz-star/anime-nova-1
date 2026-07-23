.class public final Lcom/facebook/ads/redexgen/X/nF;
.super Lcom/facebook/ads/redexgen/X/Eh;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoTrackInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/Eh<",
        "Lcom/facebook/ads/redexgen/X/nF;",
        ">;"
    }
.end annotation


# static fields
.field public static A0H:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "FEATURE_LOGIC"
        }
        value = "D56211926, support language flag in video track"
    .end annotation
.end field

.field public final A04:I
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "FEATURE_LOGIC"
        }
        value = "D56211926, support language flag in video track"
    .end annotation
.end field

.field public final A05:I

.field public final A06:I

.field public final A07:I

.field public final A08:I

.field public final A09:Lcom/facebook/ads/redexgen/X/9i;

.field public final A0A:Z

.field public final A0B:Z

.field public final A0C:Z

.field public final A0D:Z

.field public final A0E:Z

.field public final A0F:Z

.field public final A0G:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3290
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "VuHjt8oOpq8N7C214wGoSA1AvoAEOrJ7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "uFvhlxS5lUy9ksGg6O4Xt3y9x"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "z2gekC5V6p56SAeTbAO0jRL35"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "AJl44cd0wjf7yp80NhOEfrZac9uQkeAm"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "fvb2kSFN69PWkoJ4Ln26XpHSuOzso8Xv"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "xYIwGH1EqCgaa9qjZOqbWgZcWwFFG4Ev"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iW7gA0b6LPVcA0KpSRoleRmfzjbkINez"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "mxsnKoNumrVzSuMZZmY48wO5LDc3OokM"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/nF;->A0H:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/pg;ILcom/facebook/ads/redexgen/X/9i;ILjava/lang/String;IZ)V
    .locals 9
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "FEATURE_LOGIC"
        }
        value = "D56211926, support language flag in video track"
    .end annotation

    .line 100108
    move-object v2, p0

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Eh;-><init>(ILcom/facebook/ads/redexgen/X/pg;I)V

    .line 100109
    iput-object p4, v2, Lcom/facebook/ads/redexgen/X/nF;->A09:Lcom/facebook/ads/redexgen/X/9i;

    .line 100110
    iget-boolean v0, p4, Lcom/facebook/ads/redexgen/X/9i;->A07:Z

    if-eqz v0, :cond_14

    .line 100111
    const/16 v3, 0x18

    .line 100112
    .local v3, "requiredAdaptiveSupport":I
    :goto_0
    iget-boolean v0, p4, Lcom/facebook/ads/redexgen/X/9i;->A06:Z

    const/4 v4, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_13

    and-int p7, p7, v3

    if-eqz p7, :cond_13

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/nF;->A0A:Z

    .line 100113
    const/high16 v6, -0x40800000    # -1.0f

    const/4 v5, -0x1

    if-eqz p8, :cond_12

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    if-eq v0, v5, :cond_0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/pc;->A06:I

    if-gt v1, v0, :cond_12

    :cond_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    if-eq v0, v5, :cond_1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/pc;->A05:I

    if-gt v1, v0, :cond_12

    :cond_1
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A01:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/qI;->A01:F

    iget v0, p4, Lcom/facebook/ads/redexgen/X/pc;->A04:I

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_12

    :cond_2
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A05:I

    if-eq v0, v5, :cond_3

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/qI;->A05:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/pc;->A03:I

    if-gt v1, v0, :cond_12

    :cond_3
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/nF;->A0C:Z

    .line 100114
    if-eqz p8, :cond_11

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    if-eq v0, v5, :cond_4

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/pc;->A0A:I

    if-lt v1, v0, :cond_11

    :cond_4
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    if-eq v0, v5, :cond_5

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/pc;->A09:I

    if-lt v1, v0, :cond_11

    :cond_5
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A01:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_6

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/qI;->A01:F

    iget v0, p4, Lcom/facebook/ads/redexgen/X/pc;->A08:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_11

    :cond_6
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A05:I

    if-eq v0, v5, :cond_7

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/qI;->A05:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/pc;->A07:I

    if-lt v1, v0, :cond_11

    :cond_7
    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/nF;->A0D:Z

    .line 100115
    invoke-static {p5, v4}, Lcom/facebook/ads/redexgen/X/9h;->A0S(IZ)Z

    move-result v0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/nF;->A0E:Z

    .line 100116
    const/4 v7, 0x0

    .line 100117
    .local v4, "bestLanguageScore":I
    const v6, 0x7fffffff

    .line 100118
    .local v7, "bestLanguageIndex":I
    const/4 v5, 0x0

    .local v8, "i":I
    :goto_4
    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/pc;->A0L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_8

    .line 100119
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/pc;->A0L:Ljava/util/List;

    .line 100120
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100121
    invoke-static {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/9h;->A02(Lcom/facebook/ads/redexgen/X/qI;Ljava/lang/String;Z)I

    move-result v0

    .line 100122
    .local p0, "score":I
    if-lez v0, :cond_10

    .line 100123
    move v6, v5

    .line 100124
    move v7, v0

    .line 100125
    .end local v8    # "i":I
    :cond_8
    iput v6, v2, Lcom/facebook/ads/redexgen/X/nF;->A03:I

    .line 100126
    iput v7, v2, Lcom/facebook/ads/redexgen/X/nF;->A04:I

    .line 100127
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A05:I

    iput v0, v2, Lcom/facebook/ads/redexgen/X/nF;->A00:I

    .line 100128
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qI;->A06()I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/nF;->A02:I

    .line 100129
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/qI;->A0E:I

    iget v0, p4, Lcom/facebook/ads/redexgen/X/pc;->A0D:I

    .line 100130
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9h;->A01(II)I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/nF;->A06:I

    .line 100131
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0E:I

    if-eqz v0, :cond_9

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0E:I

    and-int/2addr v0, v8

    if-eqz v0, :cond_f

    :cond_9
    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/nF;->A0B:Z

    .line 100132
    invoke-static {p6}, Lcom/facebook/ads/redexgen/X/9h;->A0K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v1, 0x1

    .line 100133
    .local v8, "selectedAudioLanguageUndetermined":Z
    :goto_6
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    .line 100134
    invoke-static {v0, p6, v1}, Lcom/facebook/ads/redexgen/X/9h;->A02(Lcom/facebook/ads/redexgen/X/qI;Ljava/lang/String;Z)I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/nF;->A07:I

    .line 100135
    const v6, 0x7fffffff

    .line 100136
    .local p0, "bestMimeTypeMatchIndex":I
    const/4 v5, 0x0

    .local p2, "i":I
    :goto_7
    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/pc;->A0M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_a

    .line 100137
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    iget-object v0, p4, Lcom/facebook/ads/redexgen/X/pc;->A0M:Ljava/util/List;

    .line 100138
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 100139
    move v6, v5

    .line 100140
    .end local p2    # "i":I
    :cond_a
    iput v6, v2, Lcom/facebook/ads/redexgen/X/nF;->A05:I

    .line 100141
    invoke-static {p5}, Lcom/facebook/ads/redexgen/X/7i;->A02(I)I

    move-result v1

    const/16 v0, 0x80

    if-ne v1, v0, :cond_c

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/nF;->A0G:Z

    .line 100142
    invoke-static {p5}, Lcom/facebook/ads/redexgen/X/7i;->A04(I)I

    move-result v1

    const/16 v0, 0x40

    if-ne v1, v0, :cond_b

    const/4 v4, 0x1

    :cond_b
    iput-boolean v4, v2, Lcom/facebook/ads/redexgen/X/nF;->A0F:Z

    .line 100143
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9h;->A08(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/nF;->A01:I

    .line 100144
    invoke-direct {p0, p5, v3}, Lcom/facebook/ads/redexgen/X/nF;->A00(II)I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/nF;->A08:I

    .line 100145
    return-void

    .line 100146
    :cond_c
    const/4 v0, 0x0

    goto :goto_8

    .line 100147
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 100148
    :cond_e
    const/4 v1, 0x0

    goto :goto_6

    .line 100149
    :cond_f
    const/4 v0, 0x0

    goto :goto_5

    .line 100150
    .end local p0    # "bestMimeTypeMatchIndex":I
    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 100151
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 100152
    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 100153
    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 100154
    :cond_14
    const/16 v3, 0x10

    goto/16 :goto_0
.end method

.method private A00(II)I
    .locals 2

    .line 100155
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0E:I

    and-int/lit16 v0, v0, 0x4000

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 100156
    return v1

    .line 100157
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nF;->A09:Lcom/facebook/ads/redexgen/X/9i;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9i;->A0B:Z

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/9h;->A0S(IZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100158
    return v1

    .line 100159
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nF;->A0C:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nF;->A09:Lcom/facebook/ads/redexgen/X/9i;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9i;->A0C:Z

    if-nez v0, :cond_2

    .line 100160
    return v1

    .line 100161
    :cond_2
    invoke-static {p1, v1}, Lcom/facebook/ads/redexgen/X/9h;->A0S(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nF;->A0D:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nF;->A0C:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/qI;->A05:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nF;->A09:Lcom/facebook/ads/redexgen/X/9i;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/pc;->A0N:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nF;->A09:Lcom/facebook/ads/redexgen/X/9i;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/pc;->A0O:Z

    if-nez v0, :cond_3

    and-int/2addr p1, p2

    if-eqz p1, :cond_3

    .line 100162
    const/4 v0, 0x2

    .line 100163
    :goto_0
    return v0

    .line 100164
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/nF;Lcom/facebook/ads/redexgen/X/nF;)I
    .locals 6
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "FEATURE_LOGIC"
        }
        value = "D56211926, support language flag in video track"
    .end annotation

    .line 100165
    invoke-static {}, Lcom/facebook/ads/redexgen/X/ns;->A01()Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/nF;->A0E:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/nF;->A0E:Z

    .line 100166
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A09(ZZ)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nF;->A03:I

    .line 100167
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p1, Lcom/facebook/ads/redexgen/X/nF;->A03:I

    .line 100168
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 100169
    invoke-static {}, Lcom/facebook/ads/redexgen/X/qK;->A03()Lcom/facebook/ads/redexgen/X/BB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BB;->A06()Lcom/facebook/ads/redexgen/X/qK;

    move-result-object v0

    .line 100170
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/nF;->A04:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/nF;->A04:I

    .line 100171
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A06(II)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/nF;->A06:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/nF;->A06:I

    .line 100172
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A06(II)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/nF;->A0B:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/nF;->A0B:Z

    .line 100173
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A09(ZZ)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/nF;->A07:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/nF;->A07:I

    .line 100174
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A06(II)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/nF;->A0C:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/nF;->A0C:Z

    .line 100175
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A09(ZZ)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/nF;->A0D:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/nF;->A0D:Z

    .line 100176
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A09(ZZ)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nF;->A05:I

    .line 100177
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p1, Lcom/facebook/ads/redexgen/X/nF;->A05:I

    .line 100178
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 100179
    invoke-static {}, Lcom/facebook/ads/redexgen/X/qK;->A03()Lcom/facebook/ads/redexgen/X/BB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BB;->A06()Lcom/facebook/ads/redexgen/X/qK;

    move-result-object v0

    .line 100180
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/nF;->A0G:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/nF;->A0G:Z

    .line 100181
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A09(ZZ)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/nF;->A0F:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/nF;->A0F:Z

    .line 100182
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A09(ZZ)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v5

    .line 100183
    .local v0, "chain":Lcom/facebook/ads/redexgen/X/ns;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nF;->A0G:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nF;->A0F:Z

    if-eqz v0, :cond_0

    .line 100184
    iget v4, p0, Lcom/facebook/ads/redexgen/X/nF;->A01:I

    iget v3, p1, Lcom/facebook/ads/redexgen/X/nF;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/nF;->A0H:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x63

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/nF;->A0H:[Ljava/lang/String;

    const-string v1, "L7q4oO3o2NLjefqLZehpujqtxzeKbA5O"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/ns;->A06(II)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v5

    .line 100185
    :cond_0
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/ns;->A05()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/nF;->A0H:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4d

    if-eq v1, v0, :cond_1

    return v3

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/nF;->A0H:[Ljava/lang/String;

    const-string v1, "TVm4CsN40i91TfwfawYUT3UYECpWhhhJ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/nF;Lcom/facebook/ads/redexgen/X/nF;)I
    .locals 8

    .line 100186
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nF;->A0C:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nF;->A0E:Z

    if-eqz v0, :cond_1

    .line 100187
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9h;->A0H()Lcom/facebook/ads/redexgen/X/qK;

    move-result-object v3

    .line 100188
    .local v0, "qualityOrdering":Lcom/facebook/ads/redexgen/X/qK;, "Lcom/google/common/collect/Ordering<Ljava/lang/Integer;>;"
    :goto_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/ns;->A01()Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v6

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nF;->A00:I

    .line 100189
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p1, Lcom/facebook/ads/redexgen/X/nF;->A00:I

    .line 100190
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 100191
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nF;->A09:Lcom/facebook/ads/redexgen/X/9i;

    iget-boolean v7, v0, Lcom/facebook/ads/redexgen/X/pc;->A0O:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/nF;->A0H:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/nF;->A0H:[Ljava/lang/String;

    const-string v1, "07GlML0JAKsk4TXVd5GQtUxHkz6E2kCF"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9h;->A0H()Lcom/facebook/ads/redexgen/X/qK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qK;->A06()Lcom/facebook/ads/redexgen/X/qK;

    move-result-object v0

    .line 100192
    :goto_1
    invoke-virtual {v6, v5, v4, v0}, Lcom/facebook/ads/redexgen/X/ns;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nF;->A02:I

    .line 100193
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/nF;->A02:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/ns;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/nF;->A00:I

    .line 100194
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/nF;->A00:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/ns;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v0

    .line 100195
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ns;->A05()I

    move-result v0

    .line 100196
    return v0

    .line 100197
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9h;->A0I()Lcom/facebook/ads/redexgen/X/qK;

    move-result-object v0

    goto :goto_1

    .line 100198
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/9h;->A0H()Lcom/facebook/ads/redexgen/X/qK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qK;->A06()Lcom/facebook/ads/redexgen/X/qK;

    move-result-object v3

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/nF;Lcom/facebook/ads/redexgen/X/nF;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/nF;->A01(Lcom/facebook/ads/redexgen/X/nF;Lcom/facebook/ads/redexgen/X/nF;)I

    move-result p0

    return p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/nF;Lcom/facebook/ads/redexgen/X/nF;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/nF;->A02(Lcom/facebook/ads/redexgen/X/nF;Lcom/facebook/ads/redexgen/X/nF;)I

    move-result p0

    return p0
.end method

.method public static A05(Ljava/util/List;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/nF;",
            ">;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/nF;",
            ">;)I"
        }
    .end annotation

    .line 100199
    .local p0, "infos1":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;>;"
    .local p1, "infos2":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;>;"
    invoke-static {}, Lcom/facebook/ads/redexgen/X/ns;->A01()Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v3

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ei;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ei;-><init>()V

    .line 100200
    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/nF;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ei;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ei;-><init>()V

    .line 100201
    invoke-static {p1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/nF;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ei;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ei;-><init>()V

    .line 100202
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v2

    .line 100203
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A06(II)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v3

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ej;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ej;-><init>()V

    .line 100204
    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/nF;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ej;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ej;-><init>()V

    .line 100205
    invoke-static {p1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/nF;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ej;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ej;-><init>()V

    .line 100206
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ns;->A08(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/ns;

    move-result-object v0

    .line 100207
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ns;->A05()I

    move-result v0

    .line 100208
    return v0
.end method

.method public static A06(ILcom/facebook/ads/redexgen/X/pg;Lcom/facebook/ads/redexgen/X/9i;[ILjava/lang/String;I)Lcom/facebook/ads/redexgen/X/BP;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/ads/redexgen/X/pg;",
            "Lcom/facebook/ads/redexgen/X/9i;",
            "[I",
            "Ljava/lang/String;",
            "I)",
            "Lcom/facebook/ads/redexgen/X/BP<",
            "Lcom/facebook/ads/redexgen/X/nF;",
            ">;"
        }
    .end annotation

    .line 100209
    move-object/from16 v9, p2

    iget v2, v9, Lcom/facebook/ads/redexgen/X/pc;->A0F:I

    iget v1, v9, Lcom/facebook/ads/redexgen/X/pc;->A0E:I

    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/pc;->A0Q:Z

    .line 100210
    invoke-static {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9h;->A04(Lcom/facebook/ads/redexgen/X/pg;IIZ)I

    move-result v4

    .line 100211
    .local v11, "maxPixelsToRetainForViewport":I
    invoke-static {}, Lcom/facebook/ads/redexgen/X/BP;->A01()Lcom/facebook/ads/redexgen/X/2K;

    move-result-object v3

    .line 100212
    .local v12, "listBuilder":Lcom/facebook/ads/redexgen/X/2K;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$VideoTrackInfo;>;"
    const/4 v8, 0x0

    .local v13, "i":I
    :goto_0
    iget v5, p1, Lcom/facebook/ads/redexgen/X/pg;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/nF;->A0H:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/nF;->A0H:[Ljava/lang/String;

    const-string v1, "2BgCu4KRvJ20zb7ljNDccj45OL5WeAVY"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "2mW0v3SSZTDHEKi4uYotr9FneqRXRzcE"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge v8, v5, :cond_3

    .line 100213
    invoke-virtual {p1, v8}, Lcom/facebook/ads/redexgen/X/pg;->A08(I)Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/qI;->A06()I

    move-result v1

    .line 100214
    .local p0, "pixelCount":I
    const v0, 0x7fffffff

    if-eq v4, v0, :cond_1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    if-gt v1, v4, :cond_2

    :cond_1
    const/4 v13, 0x1

    .line 100215
    .local v8, "isSuitableForViewport":Z
    :goto_1
    new-instance v5, Lcom/facebook/ads/redexgen/X/nF;

    aget v10, p3, v8

    move-object v7, p1

    move-object/from16 v11, p4

    move/from16 v12, p5

    move v6, p0

    invoke-direct/range {v5 .. v13}, Lcom/facebook/ads/redexgen/X/nF;-><init>(ILcom/facebook/ads/redexgen/X/pg;ILcom/facebook/ads/redexgen/X/9i;ILjava/lang/String;IZ)V

    invoke-virtual {v3, v5}, Lcom/facebook/ads/redexgen/X/2K;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/2K;

    .line 100216
    .end local v8    # "isSuitableForViewport":Z
    .end local p0    # "pixelCount":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 100217
    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    .line 100218
    .end local v13    # "i":I
    :cond_3
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/2K;->A05()Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    return-object v0
.end method

.method private final A07(Lcom/facebook/ads/redexgen/X/nF;)Z
    .locals 4

    .line 100219
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nF;->A0A:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Eh;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    .line 100220
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A1E(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nF;->A09:Lcom/facebook/ads/redexgen/X/9i;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9i;->A05:Z

    if-nez v0, :cond_3

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/nF;->A0G:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/nF;->A0G:Z

    if-ne v1, v0, :cond_1

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/nF;->A0F:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/nF;->A0H:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4d

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/nF;->A0H:[Ljava/lang/String;

    const-string v1, "O482IHGDjbokfcz29RQKjL9l7"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "cI8rqKrS6U71hTMAagWNF9taj"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/nF;->A0F:Z

    if-ne v3, v0, :cond_1

    :cond_3
    const/4 v0, 0x1

    .line 100221
    :goto_0
    return v0
.end method


# virtual methods
.method public final A08()I
    .locals 1

    .line 100222
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nF;->A08:I

    return v0
.end method

.method public final bridge synthetic A09(Lcom/facebook/ads/redexgen/X/Eh;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 100223
    check-cast p1, Lcom/facebook/ads/redexgen/X/nF;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/nF;->A07(Lcom/facebook/ads/redexgen/X/nF;)Z

    move-result v0

    return v0
.end method
