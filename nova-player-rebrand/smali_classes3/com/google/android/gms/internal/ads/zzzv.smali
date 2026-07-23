.class final synthetic Lcom/google/android/gms/internal/ads/zzzv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzzv;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzzv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzzv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzzv;->zza:Lcom/google/android/gms/internal/ads/zzzv;

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
    .locals 0

    .line 0
    check-cast p2, Lcom/google/android/gms/internal/ads/zzzz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzz;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzzz;->zzf(Lcom/google/android/gms/internal/ads/zzzz;Lcom/google/android/gms/internal/ads/zzzz;)I

    move-result p1

    return p1
.end method
