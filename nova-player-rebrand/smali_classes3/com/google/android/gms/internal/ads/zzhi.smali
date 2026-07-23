.class public final Lcom/google/android/gms/internal/ads/zzhi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzha;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzht;

.field private zzb:Lcom/google/android/gms/internal/ads/zzhz;

.field private zzc:Ljava/lang/String;

.field private zzd:I

.field private zze:I

.field private zzf:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzht;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzht;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhi;->zza:Lcom/google/android/gms/internal/ads/zzht;

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhi;->zzd:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhi;->zze:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Lcom/google/android/gms/internal/ads/zzhb;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhi;->zzg()Lcom/google/android/gms/internal/ads/zzhm;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhi;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhi;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/ads/zzhi;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhi;->zzd:I

    return-object p0
.end method

.method public final zzd(I)Lcom/google/android/gms/internal/ads/zzhi;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhi;->zze:I

    return-object p0
.end method

.method public final zze(Z)Lcom/google/android/gms/internal/ads/zzhi;
    .locals 0

    .line 0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhi;->zzf:Z

    return-object p0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzhz;)Lcom/google/android/gms/internal/ads/zzhi;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhi;->zzb:Lcom/google/android/gms/internal/ads/zzhz;

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzhm;
    .locals 10

    .line 1
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzhi;->zza:Lcom/google/android/gms/internal/ads/zzht;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhi;->zzc:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhi;->zzd:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzhi;->zze:I

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzhi;->zzf:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzhm;-><init>(Ljava/lang/String;IIZZLcom/google/android/gms/internal/ads/zzht;Lcom/google/android/gms/internal/ads/zzgrd;Z[B)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhi;->zzb:Lcom/google/android/gms/internal/ads/zzhz;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgt;->zze(Lcom/google/android/gms/internal/ads/zzhz;)V

    :cond_0
    return-object v0
.end method
