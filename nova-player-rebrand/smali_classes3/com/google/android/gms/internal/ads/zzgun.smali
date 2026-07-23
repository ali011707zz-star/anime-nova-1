.class public abstract Lcom/google/android/gms/internal/ads/zzgun;
.super Lcom/google/android/gms/internal/ads/zzgsz;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final transient map:Lcom/google/android/gms/internal/ads/zzgui;

.field final transient size:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgui;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgsz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgun;->map:Lcom/google/android/gms/internal/ads/zzgui;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgun;->size:I

    return-void
.end method


# virtual methods
.method public final zzd()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    throw v0
.end method

.method public final zze(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 0
    const/4 p1, 0x0

    throw p1
.end method

.method public final zzf()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    throw v0
.end method

.method final zzh()Ljava/util/Set;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method final synthetic zzj()Ljava/util/Collection;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgum;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgum;-><init>(Lcom/google/android/gms/internal/ads/zzgun;)V

    return-object v0
.end method

.method final zzl()Ljava/util/Map;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final zzr(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzgsy;->zzr(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic zzt()Ljava/util/Collection;
    .locals 1

    .line 0
    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic zzu()Ljava/util/Map;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgun;->map:Lcom/google/android/gms/internal/ads/zzgui;

    return-object v0
.end method
