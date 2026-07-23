.class final Lcom/google/android/gms/internal/ads/zzanj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzama;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzanc;

.field private final zzb:[J

.field private final zzc:Ljava/util/Map;

.field private final zzd:Ljava/util/Map;

.field private final zze:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzanc;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanj;->zza:Lcom/google/android/gms/internal/ads/zzanc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzanj;->zzd:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzanj;->zze:Ljava/util/Map;

    invoke-static {p2}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzanj;->zzc:Ljava/util/Map;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzanc;->zzg()[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanj;->zzb:[J

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanj;->zzb:[J

    array-length v0, v0

    return v0
.end method

.method public final zzb(I)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanj;->zzb:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final zzc(J)Ljava/util/List;
    .locals 6

    .line 1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzanj;->zzc:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzanj;->zzd:Ljava/util/Map;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzanj;->zze:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanj;->zza:Lcom/google/android/gms/internal/ads/zzanc;

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzanc;->zzh(JLjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
