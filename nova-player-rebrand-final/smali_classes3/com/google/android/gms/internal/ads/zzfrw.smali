.class final synthetic Lcom/google/android/gms/internal/ads/zzfrw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzfrw;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfrw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfrw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfrw;->zza:Lcom/google/android/gms/internal/ads/zzfrw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p2, Lcom/google/android/gms/internal/ads/zzfro;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfro;

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfro;->zze()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfro;->zze()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfro;->zzd()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfro;->zzd()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method
