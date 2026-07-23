.class final synthetic Lcom/google/android/gms/internal/ads/zzza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzza;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzza;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzza;->zza:Lcom/google/android/gms/internal/ads/zzza;

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
    .locals 1

    check-cast p2, Ljava/util/List;

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzq;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzzq;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzzq;->zzb(Lcom/google/android/gms/internal/ads/zzzq;)I

    move-result p1

    return p1
.end method
