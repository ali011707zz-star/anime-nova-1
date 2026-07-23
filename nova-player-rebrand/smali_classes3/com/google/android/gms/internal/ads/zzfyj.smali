.class public final Lcom/google/android/gms/internal/ads/zzfyj;
.super Lcom/google/android/gms/internal/ads/zzfxx;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzgru;

.field private zzb:Lcom/google/android/gms/internal/ads/zzgru;

.field private zzc:Lcom/google/android/gms/internal/ads/zzfxz;

.field private zzd:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfyi;->zza:Lcom/google/android/gms/internal/ads/zzfyi;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfya;->zza:Lcom/google/android/gms/internal/ads/zzfya;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfyj;-><init>(Lcom/google/android/gms/internal/ads/zzgru;Lcom/google/android/gms/internal/ads/zzgru;Lcom/google/android/gms/internal/ads/zzfxz;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgru;Lcom/google/android/gms/internal/ads/zzgru;Lcom/google/android/gms/internal/ads/zzfxz;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfxx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfyj;->zza:Lcom/google/android/gms/internal/ads/zzgru;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfyj;->zzb:Lcom/google/android/gms/internal/ads/zzgru;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfyj;->zzc:Lcom/google/android/gms/internal/ads/zzfxz;

    return-void
.end method

.method private static synthetic zzA()Ljava/lang/Integer;
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic zzB()Ljava/lang/Integer;
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static zzi(Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxy;->zzb()V

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method static synthetic zzk()Ljava/lang/Integer;
    .locals 1

    .line 0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyj;->zzB()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzl()Ljava/lang/Integer;
    .locals 1

    .line 0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyj;->zzA()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzr(I)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfyj;->zzu(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzs(I)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfyj;->zzt(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic zzt(I)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic zzu(I)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfyj;->zzd:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfyj;->zzi(Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method public zzh(Lcom/google/android/gms/internal/ads/zzfxz;II)Ljava/net/HttpURLConnection;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfyg;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzfyg;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfyj;->zza:Lcom/google/android/gms/internal/ads/zzgru;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfyh;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzfyh;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfyj;->zzb:Lcom/google/android/gms/internal/ads/zzgru;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfyj;->zzc:Lcom/google/android/gms/internal/ads/zzfxz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfyj;->zzj()Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method public zzj()Ljava/net/HttpURLConnection;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfyj;->zza:Lcom/google/android/gms/internal/ads/zzgru;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgru;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfyj;->zzb:Lcom/google/android/gms/internal/ads/zzgru;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzgru;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfxy;->zza(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfyj;->zzc:Lcom/google/android/gms/internal/ads/zzfxz;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfxz;->zza()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfyj;->zzd:Ljava/net/HttpURLConnection;

    return-object v0
.end method
