.class public final Lcom/google/android/gms/internal/ads/zzhkr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhye;


# instance fields
.field private final zzb:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhye;->zza([B)Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhkr;->zza:Lcom/google/android/gms/internal/ads/zzhye;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhkr;->zzb:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zza([B)Ljava/lang/Iterable;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhkr;->zzb:Ljava/util/Map;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhkr;->zza:Lcom/google/android/gms/internal/ads/zzhye;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2
    array-length v2, p1

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhye;->zzb([BII)Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    return-object p1

    :cond_3
    if-nez p1, :cond_4

    return-object v1

    .line 2
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhko;

    .line 3
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzhko;-><init>(Lcom/google/android/gms/internal/ads/zzhkr;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
