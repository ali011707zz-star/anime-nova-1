.class final synthetic Lcom/google/android/gms/internal/ads/zzffo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgyw;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzffq;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfgk;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzffp;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfgi;

.field private final synthetic zze:Lcom/google/android/gms/internal/ads/zzdam;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzffq;Lcom/google/android/gms/internal/ads/zzfgk;Lcom/google/android/gms/internal/ads/zzffp;Lcom/google/android/gms/internal/ads/zzfgi;Lcom/google/android/gms/internal/ads/zzdam;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzffo;->zza:Lcom/google/android/gms/internal/ads/zzffq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzffo;->zzb:Lcom/google/android/gms/internal/ads/zzfgk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzffo;->zzc:Lcom/google/android/gms/internal/ads/zzffp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzffo;->zzd:Lcom/google/android/gms/internal/ads/zzfgi;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzffo;->zze:Lcom/google/android/gms/internal/ads/zzdam;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzffo;->zza:Lcom/google/android/gms/internal/ads/zzffq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzffo;->zzb:Lcom/google/android/gms/internal/ads/zzfgk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzffo;->zzc:Lcom/google/android/gms/internal/ads/zzffp;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzffo;->zzd:Lcom/google/android/gms/internal/ads/zzfgi;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzffo;->zze:Lcom/google/android/gms/internal/ads/zzdam;

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzffv;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzffq;->zze(Lcom/google/android/gms/internal/ads/zzfgk;Lcom/google/android/gms/internal/ads/zzffp;Lcom/google/android/gms/internal/ads/zzfgi;Lcom/google/android/gms/internal/ads/zzdam;Lcom/google/android/gms/internal/ads/zzffv;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
