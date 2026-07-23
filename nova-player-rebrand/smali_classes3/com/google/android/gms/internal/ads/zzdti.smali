.class public final Lcom/google/android/gms/internal/ads/zzdti;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/zza;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdxz;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzeiu;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzazh;

.field private final zzg:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfqk;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzejf;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzfjo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzckb;Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzfqk;Lcom/google/android/gms/internal/ads/zzdxz;Lcom/google/android/gms/internal/ads/zzejf;Lcom/google/android/gms/internal/ads/zzfjo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdti;->zze:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzf:Lcom/google/android/gms/internal/ads/zzazh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzg:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdti;->zza:Lcom/google/android/gms/ads/internal/zza;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzd:Lcom/google/android/gms/internal/ads/zzeiu;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzh:Lcom/google/android/gms/internal/ads/zzfqk;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzc:Lcom/google/android/gms/internal/ads/zzdxz;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzi:Lcom/google/android/gms/internal/ads/zzejf;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzj:Lcom/google/android/gms/internal/ads/zzfjo;

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdtk;-><init>(Lcom/google/android/gms/internal/ads/zzdti;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdtk;->zza()V

    return-object v0
.end method

.method final synthetic zza()Lcom/google/android/gms/ads/internal/zza;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdti;->zza:Lcom/google/android/gms/ads/internal/zza;

    return-object v0
.end method

.method final synthetic zzb()Landroid/content/Context;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzb:Landroid/content/Context;

    return-object v0
.end method

.method final synthetic zzc()Lcom/google/android/gms/internal/ads/zzdxz;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzc:Lcom/google/android/gms/internal/ads/zzdxz;

    return-object v0
.end method

.method final synthetic zzd()Lcom/google/android/gms/internal/ads/zzeiu;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzd:Lcom/google/android/gms/internal/ads/zzeiu;

    return-object v0
.end method

.method final synthetic zze()Ljava/util/concurrent/Executor;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdti;->zze:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method final synthetic zzf()Lcom/google/android/gms/internal/ads/zzazh;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzf:Lcom/google/android/gms/internal/ads/zzazh;

    return-object v0
.end method

.method final synthetic zzg()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzg:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-object v0
.end method

.method final synthetic zzh()Lcom/google/android/gms/internal/ads/zzfqk;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzh:Lcom/google/android/gms/internal/ads/zzfqk;

    return-object v0
.end method

.method final synthetic zzi()Lcom/google/android/gms/internal/ads/zzejf;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzi:Lcom/google/android/gms/internal/ads/zzejf;

    return-object v0
.end method

.method final synthetic zzj()Lcom/google/android/gms/internal/ads/zzfjo;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdti;->zzj:Lcom/google/android/gms/internal/ads/zzfjo;

    return-object v0
.end method
