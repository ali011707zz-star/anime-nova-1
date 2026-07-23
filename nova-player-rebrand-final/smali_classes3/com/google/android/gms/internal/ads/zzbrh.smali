.class final Lcom/google/android/gms/internal/ads/zzbrh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzboh;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbro;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzboh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbro;Lcom/google/android/gms/internal/ads/zzboh;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrh;->zza:Lcom/google/android/gms/internal/ads/zzbro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbrh;->zzb:Lcom/google/android/gms/internal/ads/zzboh;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjl;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrh;->zzb:Lcom/google/android/gms/internal/ads/zzboh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrh;->zza:Lcom/google/android/gms/internal/ads/zzbro;

    .line 2
    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzboh;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

.method final synthetic zzb()Lcom/google/android/gms/internal/ads/zzboh;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrh;->zzb:Lcom/google/android/gms/internal/ads/zzboh;

    return-object v0
.end method
