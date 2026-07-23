.class final synthetic Lcom/google/android/gms/internal/ads/zzabi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzabi;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzabi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzabi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabi;->zza:Lcom/google/android/gms/internal/ads/zzabi;

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

    check-cast p2, Lcom/google/android/gms/internal/ads/zzabg;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzabg;

    .line 1
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzabg;->zza:I

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzabg;->zza:I

    sub-int/2addr p1, p2

    return p1
.end method
