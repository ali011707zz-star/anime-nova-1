.class final Lcom/google/android/gms/internal/ads/zzgwc;
.super Lcom/google/android/gms/internal/ads/zzgup;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/ads/zzgui;

.field private final transient zzb:[Ljava/lang/Object;

.field private final transient zzc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgui;[Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgup;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zza:Lcom/google/android/gms/internal/ads/zzgui;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zzb:[Ljava/lang/Object;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zzc:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zza:Lcom/google/android/gms/internal/ads/zzgui;

    .line 5
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzgui;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgub;->zze()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzguf;->zzu(I)Lcom/google/android/gms/internal/ads/zzgwu;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zzc:I

    return v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzgwt;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgub;->zze()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzguf;->zzu(I)Lcom/google/android/gms/internal/ads/zzgwu;

    move-result-object v0

    return-object v0
.end method

.method final zzf()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method final zzg([Ljava/lang/Object;I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgub;->zze()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgub;->zzg([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method final zzr()Lcom/google/android/gms/internal/ads/zzguf;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgwb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgwb;-><init>(Lcom/google/android/gms/internal/ads/zzgwc;)V

    return-object v0
.end method

.method final synthetic zzv()[Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zzb:[Ljava/lang/Object;

    return-object v0
.end method

.method final synthetic zzw()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgwc;->zzc:I

    return v0
.end method
