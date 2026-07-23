.class final synthetic Lcom/google/android/gms/internal/ads/zzhft;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhjb;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhft;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhft;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhft;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhft;->zza:Lcom/google/android/gms/internal/ads/zzhft;

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

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhfx;

    sget v0, Lcom/google/android/gms/internal/ads/zzhfv;->$r8$clinit:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhfx;->zzc()Lcom/google/android/gms/internal/ads/zzhfw;

    move-result-object p1

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhyg;->zzb(I)Lcom/google/android/gms/internal/ads/zzhyg;

    move-result-object v0

    .line 2
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzhfr;->zzd(Lcom/google/android/gms/internal/ads/zzhfw;Lcom/google/android/gms/internal/ads/zzhyg;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhfr;

    move-result-object p1

    return-object p1
.end method
