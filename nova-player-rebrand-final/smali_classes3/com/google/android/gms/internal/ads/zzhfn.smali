.class final synthetic Lcom/google/android/gms/internal/ads/zzhfn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhjb;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhfn;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhfn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhfn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhfn;->zza:Lcom/google/android/gms/internal/ads/zzhfn;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzhbp;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhaz;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhfq;

    const/16 v0, 0x20

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhyg;->zzb(I)Lcom/google/android/gms/internal/ads/zzhyg;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzhfl;->zzd(Lcom/google/android/gms/internal/ads/zzhfq;Lcom/google/android/gms/internal/ads/zzhyg;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhfl;

    move-result-object p1

    return-object p1
.end method
