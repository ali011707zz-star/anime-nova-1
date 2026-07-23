.class final synthetic Lcom/google/android/gms/internal/ads/zzhss;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhjb;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhss;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhss;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhss;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhss;->zza:Lcom/google/android/gms/internal/ads/zzhss;

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
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhsq;

    sget v0, Lcom/google/android/gms/internal/ads/zzhsw;->$r8$clinit:I

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhwt;->zzc()Lcom/google/android/gms/internal/ads/zzhwt;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhsq;->zzc()Lcom/google/android/gms/internal/ads/zzhsp;

    move-result-object p1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwt;->zza()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhye;->zza([B)Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v1

    .line 3
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzhsx;->zzc(Lcom/google/android/gms/internal/ads/zzhsp;Lcom/google/android/gms/internal/ads/zzhye;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhsx;

    move-result-object p1

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwt;->zzb()[B

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhax;->zza()Lcom/google/android/gms/internal/ads/zzhbt;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzhyg;->zza([BLcom/google/android/gms/internal/ads/zzhbt;)Lcom/google/android/gms/internal/ads/zzhyg;

    move-result-object p2

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzhsr;->zzc(Lcom/google/android/gms/internal/ads/zzhsx;Lcom/google/android/gms/internal/ads/zzhyg;)Lcom/google/android/gms/internal/ads/zzhsr;

    move-result-object p1

    return-object p1
.end method
