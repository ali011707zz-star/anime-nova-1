.class public final Lcom/google/android/gms/internal/ads/zzsp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzps;

.field private zzc:Z

.field private zzd:Lcom/google/android/gms/internal/ads/zzso;

.field private zze:Lcom/google/android/gms/internal/ads/zzqm;

.field private zzf:Lcom/google/android/gms/internal/ads/zzsr;

.field private zzg:Lcom/google/android/gms/internal/ads/zzsm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsp;->zza:Landroid/content/Context;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzps;->zza:Lcom/google/android/gms/internal/ads/zzps;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsp;->zzb:Lcom/google/android/gms/internal/ads/zzps;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzsw;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsp;->zzc:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzsp;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsp;->zzf:Lcom/google/android/gms/internal/ads/zzsr;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzsr;

    new-array v3, v2, [Lcom/google/android/gms/internal/ads/zzco;

    .line 2
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzsr;-><init>([Lcom/google/android/gms/internal/ads/zzco;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsp;->zzf:Lcom/google/android/gms/internal/ads/zzsr;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsp;->zze:Lcom/google/android/gms/internal/ads/zzqm;

    const/4 v3, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsp;->zzg:Lcom/google/android/gms/internal/ads/zzsm;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsp;->zza:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzsm;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzsm;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzsp;->zzg:Lcom/google/android/gms/internal/ads/zzsm;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsp;->zzd:Lcom/google/android/gms/internal/ads/zzso;

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzso;->zza:Lcom/google/android/gms/internal/ads/zzso;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsp;->zzd:Lcom/google/android/gms/internal/ads/zzso;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsp;->zza:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzsg;

    .line 4
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzsg;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_3

    move-object v0, v3

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsp;->zzb:Lcom/google/android/gms/internal/ads/zzps;

    .line 5
    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzsg;->zzb(Lcom/google/android/gms/internal/ads/zzps;)Lcom/google/android/gms/internal/ads/zzsg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsp;->zzg:Lcom/google/android/gms/internal/ads/zzsm;

    .line 6
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzsg;->zzf(Lcom/google/android/gms/internal/ads/zzsm;)Lcom/google/android/gms/internal/ads/zzsg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsp;->zzd:Lcom/google/android/gms/internal/ads/zzso;

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzsg;->zza(Lcom/google/android/gms/internal/ads/zzso;)Lcom/google/android/gms/internal/ads/zzsg;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsg;->zzc()Lcom/google/android/gms/internal/ads/zzsi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsp;->zze:Lcom/google/android/gms/internal/ads/zzqm;

    goto :goto_3

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsp;->zzg:Lcom/google/android/gms/internal/ads/zzsm;

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    .line 9
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsp;->zzd:Lcom/google/android/gms/internal/ads/zzso;

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    .line 10
    :goto_2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    .line 11
    :goto_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzsw;

    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/internal/ads/zzsw;-><init>(Lcom/google/android/gms/internal/ads/zzsp;[B)V

    return-object v0
.end method

.method final synthetic zzb()Landroid/content/Context;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsp;->zza:Landroid/content/Context;

    return-object v0
.end method

.method final synthetic zzc()Lcom/google/android/gms/internal/ads/zzqm;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsp;->zze:Lcom/google/android/gms/internal/ads/zzqm;

    return-object v0
.end method

.method final synthetic zzd()Lcom/google/android/gms/internal/ads/zzsr;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsp;->zzf:Lcom/google/android/gms/internal/ads/zzsr;

    return-object v0
.end method
