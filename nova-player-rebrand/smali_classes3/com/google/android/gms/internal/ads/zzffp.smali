.class final Lcom/google/android/gms/internal/ads/zzffp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzflt;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzfgi;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzfgk;

.field public final zzc:Lcom/google/android/gms/ads/internal/client/zzm;

.field public final zzd:Ljava/lang/String;

.field public final zze:Ljava/util/concurrent/Executor;

.field public final zzf:Lcom/google/android/gms/ads/internal/client/zzx;

.field public final zzg:Lcom/google/android/gms/internal/ads/zzflj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfgi;Lcom/google/android/gms/internal/ads/zzfgk;Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/ads/internal/client/zzx;Lcom/google/android/gms/internal/ads/zzflj;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffp;->zza:Lcom/google/android/gms/internal/ads/zzfgi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzffp;->zzb:Lcom/google/android/gms/internal/ads/zzfgk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzffp;->zzc:Lcom/google/android/gms/ads/internal/client/zzm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzffp;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzffp;->zze:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzffp;->zzf:Lcom/google/android/gms/ads/internal/client/zzx;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzffp;->zzg:Lcom/google/android/gms/internal/ads/zzflj;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/util/concurrent/Executor;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffp;->zze:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzflj;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffp;->zzg:Lcom/google/android/gms/internal/ads/zzflj;

    return-object v0
.end method
