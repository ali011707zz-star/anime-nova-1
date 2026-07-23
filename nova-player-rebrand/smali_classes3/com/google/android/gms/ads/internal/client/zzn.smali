.class public final Lcom/google/android/gms/ads/internal/client/zzn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field private zza:Landroid/os/Bundle;

.field private zzb:Ljava/util/List;

.field private zzc:Z

.field private zzd:I

.field private final zze:Landroid/os/Bundle;

.field private final zzf:Landroid/os/Bundle;

.field private final zzg:Ljava/util/List;

.field private zzh:I

.field private zzi:Ljava/lang/String;

.field private final zzj:Ljava/util/List;

.field private zzk:I

.field private final zzl:I

.field private zzm:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzn;->zza:Landroid/os/Bundle;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzn;->zzb:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzn;->zzc:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/client/zzn;->zzd:I

    new-instance v1, Landroid/os/Bundle;

    .line 3
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzn;->zze:Landroid/os/Bundle;

    new-instance v1, Landroid/os/Bundle;

    .line 4
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzn;->zzf:Landroid/os/Bundle;

    new-instance v1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzn;->zzg:Ljava/util/List;

    iput v0, p0, Lcom/google/android/gms/ads/internal/client/zzn;->zzh:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzn;->zzi:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzn;->zzj:Ljava/util/List;

    const v0, 0xea60

    iput v0, p0, Lcom/google/android/gms/ads/internal/client/zzn;->zzk:I

    .line 7
    sget-object v0, Lcom/google/android/gms/ads/RequestConfiguration$PublisherPrivacyPersonalizationState;->DEFAULT:Lcom/google/android/gms/ads/RequestConfiguration$PublisherPrivacyPersonalizationState;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration$PublisherPrivacyPersonalizationState;->getValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/client/zzn;->zzl:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/client/zzn;->zzm:J

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/internal/client/zzm;
    .locals 32

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/client/zzn;->zza:Landroid/os/Bundle;

    iget-object v15, v0, Lcom/google/android/gms/ads/internal/client/zzn;->zze:Landroid/os/Bundle;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/client/zzn;->zzb:Ljava/util/List;

    iget-boolean v8, v0, Lcom/google/android/gms/ads/internal/client/zzn;->zzc:Z

    iget v9, v0, Lcom/google/android/gms/ads/internal/client/zzn;->zzd:I

    iget v2, v0, Lcom/google/android/gms/ads/internal/client/zzn;->zzh:I

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/client/zzn;->zzi:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/client/zzn;->zzj:Ljava/util/List;

    iget v6, v0, Lcom/google/android/gms/ads/internal/client/zzn;->zzl:I

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/client/zzn;->zzf:Landroid/os/Bundle;

    iget v11, v0, Lcom/google/android/gms/ads/internal/client/zzn;->zzk:I

    iget-wide v12, v0, Lcom/google/android/gms/ads/internal/client/zzn;->zzm:J

    iget-object v14, v0, Lcom/google/android/gms/ads/internal/client/zzn;->zzg:Ljava/util/List;

    const/16 v26, 0x0

    const-wide/16 v30, 0x0

    move/from16 v22, v2

    const/16 v2, 0x8

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    const-wide/16 v3, -0x1

    move/from16 v27, v6

    const/4 v6, -0x1

    move-object/from16 v16, v10

    const/4 v10, 0x0

    move/from16 v25, v11

    const/4 v11, 0x0

    move-wide/from16 v28, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v17, v14

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v1 .. v31}, Lcom/google/android/gms/ads/internal/client/zzm;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/ads/internal/client/zzfx;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/ads/internal/client/zzc;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;IJJ)V

    return-object v1
.end method

.method public final zzb(Landroid/os/Bundle;)Lcom/google/android/gms/ads/internal/client/zzn;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzn;->zza:Landroid/os/Bundle;

    return-object p0
.end method

.method public final zzc(Ljava/util/List;)Lcom/google/android/gms/ads/internal/client/zzn;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzn;->zzb:Ljava/util/List;

    return-object p0
.end method

.method public final zzd(Z)Lcom/google/android/gms/ads/internal/client/zzn;
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/client/zzn;->zzc:Z

    return-object p0
.end method

.method public final zze(I)Lcom/google/android/gms/ads/internal/client/zzn;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/ads/internal/client/zzn;->zzd:I

    return-object p0
.end method

.method public final zzf(I)Lcom/google/android/gms/ads/internal/client/zzn;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/ads/internal/client/zzn;->zzh:I

    return-object p0
.end method

.method public final zzg(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzn;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzn;->zzi:Ljava/lang/String;

    return-object p0
.end method

.method public final zzh(I)Lcom/google/android/gms/ads/internal/client/zzn;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/ads/internal/client/zzn;->zzk:I

    return-object p0
.end method

.method public final zzi(J)Lcom/google/android/gms/ads/internal/client/zzn;
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/google/android/gms/ads/internal/client/zzn;->zzm:J

    return-object p0
.end method
