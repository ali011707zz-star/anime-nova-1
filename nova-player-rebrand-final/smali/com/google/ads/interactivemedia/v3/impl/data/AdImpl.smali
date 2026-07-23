.class public Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/Ad;


# instance fields
.field private adId:Ljava/lang/String;

.field private adPodInfo:Lcom/google/ads/interactivemedia/v3/impl/data/AdPodInfoImpl;
    .annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzagg;
    .end annotation

    .annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzagk;
    .end annotation
.end field

.field private adSystem:Ljava/lang/String;

.field private adUi:Lcom/google/ads/interactivemedia/v3/api/zza;

.field private adWrapperCreativeIds:[Ljava/lang/String;
    .annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzagg;
    .end annotation

    .annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzagk;
    .end annotation
.end field

.field private adWrapperIds:[Ljava/lang/String;
    .annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzagg;
    .end annotation

    .annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzagk;
    .end annotation
.end field

.field private adWrapperSystems:[Ljava/lang/String;
    .annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzagg;
    .end annotation

    .annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzagk;
    .end annotation
.end field

.field private advertiserName:Ljava/lang/String;

.field private clickThroughUrl:Ljava/lang/String;

.field private companions:[Lcom/google/ads/interactivemedia/v3/impl/data/CompanionAdImpl;
    .annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzagg;
    .end annotation

    .annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzagk;
    .end annotation
.end field

.field private contentType:Ljava/lang/String;

.field private creativeAdId:Ljava/lang/String;

.field private creativeId:Ljava/lang/String;

.field private dealId:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private disableUi:Z

.field private duration:D

.field private height:I

.field private linear:Z

.field private skipTimeOffset:D

.field private skippable:Z

.field private surveyUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private traffickingParameters:Ljava/lang/String;

.field private uiElements:Ljava/util/Set;
    .annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzagg;
    .end annotation

    .annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzagk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/ads/interactivemedia/v3/api/UiElement;",
            ">;"
        }
    .end annotation
.end field

.field private universalAdIds:[Lcom/google/ads/interactivemedia/v3/impl/data/UniversalAdIdImpl;
    .annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzagg;
    .end annotation

    .annotation runtime Lcom/google/ads/interactivemedia/v3/internal/zzagk;
    .end annotation
.end field

.field private vastMediaBitrate:I

.field private vastMediaHeight:I

.field private vastMediaWidth:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->linear:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->skippable:Z

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->skipTimeOffset:D

    new-instance v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdPodInfoImpl;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/AdPodInfoImpl;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->adPodInfo:Lcom/google/ads/interactivemedia/v3/impl/data/AdPodInfoImpl;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->companions:[Lcom/google/ads/interactivemedia/v3/impl/data/CompanionAdImpl;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->adWrapperIds:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->adWrapperSystems:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->adWrapperCreativeIds:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->universalAdIds:[Lcom/google/ads/interactivemedia/v3/impl/data/UniversalAdIdImpl;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    const-string v0, "vastMediaHeight"

    const-string v1, "vastMediaWidth"

    const-string v2, "vastMediaBitrate"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/zzagf;->zzc(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;Z[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getAdPodInfo()Lcom/google/ads/interactivemedia/v3/api/AdPodInfo;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->adPodInfo:Lcom/google/ads/interactivemedia/v3/impl/data/AdPodInfoImpl;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()D
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->duration:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzagj;->zzb(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isLinear()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->linear:Z

    return v0
.end method

.method public setAdUi(Lcom/google/ads/interactivemedia/v3/api/zza;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->adUi:Lcom/google/ads/interactivemedia/v3/api/zza;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 46

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->adId:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->creativeId:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->creativeAdId:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->title:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->description:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->contentType:Ljava/lang/String;

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->adWrapperIds:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->adWrapperSystems:[Ljava/lang/String;

    .line 2
    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->adWrapperCreativeIds:[Ljava/lang/String;

    .line 3
    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->adSystem:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->advertiserName:Ljava/lang/String;

    iget-object v12, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->surveyUrl:Ljava/lang/String;

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->dealId:Ljava/lang/String;

    iget-boolean v14, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->linear:Z

    iget-boolean v15, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->skippable:Z

    move/from16 v16, v15

    iget v15, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->width:I

    move/from16 v17, v15

    iget v15, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->height:I

    move/from16 v18, v15

    iget v15, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->vastMediaHeight:I

    move/from16 v19, v15

    iget v15, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->vastMediaWidth:I

    move/from16 v20, v15

    iget v15, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->vastMediaBitrate:I

    move/from16 v21, v15

    iget-object v15, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->traffickingParameters:Ljava/lang/String;

    move-object/from16 v22, v15

    iget-object v15, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->clickThroughUrl:Ljava/lang/String;

    move/from16 v23, v14

    move-object/from16 v24, v15

    iget-wide v14, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->duration:D

    move-wide/from16 v25, v14

    iget-object v14, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->adPodInfo:Lcom/google/ads/interactivemedia/v3/impl/data/AdPodInfoImpl;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->uiElements:Ljava/util/Set;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v27, v15

    iget-boolean v15, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->disableUi:Z

    move-object/from16 v28, v14

    move/from16 v29, v15

    iget-wide v14, v0, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->skipTimeOffset:D

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v34

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v36

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v37

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v38

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v39

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v40

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v41

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v42

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v43

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->length()I

    move-result v44

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->length()I

    move-result v45

    add-int/lit8 v30, v30, 0x16

    add-int v30, v30, v31

    add-int/lit8 v30, v30, 0xf

    add-int v30, v30, v32

    add-int/lit8 v30, v30, 0x8

    add-int v30, v30, v33

    add-int/lit8 v30, v30, 0xe

    add-int v30, v30, v34

    add-int/lit8 v30, v30, 0xe

    add-int v30, v30, v35

    add-int/lit8 v30, v30, 0xf

    add-int v30, v30, v36

    add-int/lit8 v30, v30, 0x13

    add-int v30, v30, v37

    add-int/lit8 v30, v30, 0x17

    add-int v30, v30, v38

    add-int/lit8 v30, v30, 0xb

    add-int v30, v30, v39

    add-int/lit8 v30, v30, 0x11

    add-int v30, v30, v40

    add-int/lit8 v30, v30, 0xc

    add-int v30, v30, v41

    add-int/lit8 v30, v30, 0x9

    add-int v30, v30, v42

    add-int/lit8 v30, v30, 0x9

    add-int v30, v30, v43

    add-int/lit8 v30, v30, 0xc

    add-int v30, v30, v44

    add-int/lit8 v30, v30, 0x8

    add-int v30, v30, v45

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    add-int/lit8 v30, v30, 0x9

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    add-int v30, v30, v31

    add-int/lit8 v30, v30, 0x12

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v31

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    add-int v30, v30, v31

    add-int/lit8 v30, v30, 0x11

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v31

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    add-int v30, v30, v31

    add-int/lit8 v30, v30, 0x13

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v31

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    add-int v30, v30, v31

    add-int/lit8 v30, v30, 0x18

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v31

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    add-int v30, v30, v31

    add-int/lit8 v30, v30, 0x12

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v31

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v32

    add-int v30, v30, v31

    add-int/lit8 v30, v30, 0xb

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v31

    add-int v30, v30, v31

    add-int/lit8 v30, v30, 0xc

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v31

    add-int v30, v30, v31

    add-int/lit8 v30, v30, 0xd

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v31

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v32

    add-int v30, v30, v31

    add-int/lit8 v30, v30, 0xc

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v31

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v32

    add-int v30, v30, v31

    add-int/lit8 v30, v30, 0x11

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v31

    add-int v30, v30, v31

    new-instance v0, Ljava/lang/StringBuilder;

    move-wide/from16 v31, v14

    add-int/lit8 v14, v30, 0x1

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v14, "Ad [adId="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", creativeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", creativeAdId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adWrapperIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adWrapperSystems="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adWrapperCreativeIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", advertiserName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", surveyUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dealId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", linear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", skippable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vastMediaHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vastMediaWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vastMediaBitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", traffickingParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clickThroughUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", adPodInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uiElements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", disableUi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", skipTimeOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
