.class final synthetic Lcom/google/android/gms/internal/ads/zzels;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgyw;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzelt;

.field private final synthetic zzb:Landroid/net/Uri;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfjc;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfir;

.field private final synthetic zze:Lcom/google/android/gms/internal/ads/zzfiu;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzelt;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfiu;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzels;->zza:Lcom/google/android/gms/internal/ads/zzelt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzels;->zzb:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzels;->zzc:Lcom/google/android/gms/internal/ads/zzfjc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzels;->zzd:Lcom/google/android/gms/internal/ads/zzfir;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzels;->zze:Lcom/google/android/gms/internal/ads/zzfiu;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzels;->zza:Lcom/google/android/gms/internal/ads/zzelt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzels;->zzb:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzels;->zzc:Lcom/google/android/gms/internal/ads/zzfjc;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzels;->zzd:Lcom/google/android/gms/internal/ads/zzfir;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzels;->zze:Lcom/google/android/gms/internal/ads/zzfiu;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzelt;->zzc(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfiu;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
