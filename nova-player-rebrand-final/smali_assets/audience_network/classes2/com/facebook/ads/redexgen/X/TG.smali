.class public final Lcom/facebook/ads/redexgen/X/TG;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/TH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatabaseQueryAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TT;>;"
    }
.end annotation


# static fields
.field public static A04:[B


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/TJ;

.field public final A01:Lcom/facebook/ads/redexgen/X/ge;

.field public final A02:Lcom/facebook/ads/redexgen/X/TK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/TK<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/UO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/UO<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/TG;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ge;Lcom/facebook/ads/redexgen/X/TK;Lcom/facebook/ads/redexgen/X/UO;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/ge;",
            "Lcom/facebook/ads/redexgen/X/TK<",
            "TT;>;",
            "Lcom/facebook/ads/redexgen/X/UO<",
            "TT;>;)V"
        }
    .end annotation

    .line 64981
    .local p0, "this":Lcom/facebook/ads/redexgen/X/TG;, "Lcom/facebook/ads/internal/database/AdDatabaseHelper$DatabaseQueryAsyncTask<TT;>;"
    .local p2, "query":Lcom/facebook/ads/redexgen/X/TK;, "Lcom/facebook/ads/internal/database/AdDatabaseQuery<TT;>;"
    .local p3, "callback":Lcom/facebook/ads/redexgen/X/UO;, "Lcom/facebook/ads/internal/eventstorage/AdEventStorageCallback<TT;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 64982
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/TG;->A02:Lcom/facebook/ads/redexgen/X/TK;

    .line 64983
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/TG;->A03:Lcom/facebook/ads/redexgen/X/UO;

    .line 64984
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TG;->A01:Lcom/facebook/ads/redexgen/X/ge;

    .line 64985
    return-void
.end method

.method private final varargs A00([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TT;"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    return-object v7

    :cond_0
    move-object v6, p0

    .line 64986
    .local v0, "this":Lcom/facebook/ads/redexgen/X/TG;, "Lcom/facebook/ads/internal/database/AdDatabaseHelper$DatabaseQueryAsyncTask<TT;>;"
    .local p1, "params":[Ljava/lang/Void;
    const/4 v5, 0x0

    .line 64987
    .local v2, "queryReturn":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/TG;->A02:Lcom/facebook/ads/redexgen/X/TK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TK;->A03()Ljava/lang/Object;

    move-result-object v5

    .line 64988
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/TG;->A02:Lcom/facebook/ads/redexgen/X/TK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TK;->A00()Lcom/facebook/ads/redexgen/X/TJ;

    move-result-object v0

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/TG;->A00:Lcom/facebook/ads/redexgen/X/TJ;

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64989
    .restart local v2    # "queryReturn":Ljava/lang/Object;, "TT;"
    .restart local p1    # "params":[Ljava/lang/Void;
    :catch_0
    move-exception v4

    .line 64990
    .local v3, "sqle":Ljava/lang/Exception;
    :try_start_1
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/TG;->A01:Lcom/facebook/ads/redexgen/X/ge;

    .line 64991
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A08()Lcom/facebook/ads/redexgen/X/Tc;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TG;->A01(III)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/facebook/ads/redexgen/X/Td;->A0w:I

    new-instance v1, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v1, v4}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Ljava/lang/Throwable;)V

    .line 64992
    invoke-interface {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Tc;->ABC(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;)V

    .line 64993
    sget-object v0, Lcom/facebook/ads/redexgen/X/TJ;->A08:Lcom/facebook/ads/redexgen/X/TJ;

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/TG;->A00:Lcom/facebook/ads/redexgen/X/TJ;

    .line 64994
    .end local v3    # "sqle":Ljava/lang/Exception;
    :goto_0
    return-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/TG;, "Lcom/facebook/ads/internal/database/AdDatabaseHelper$DatabaseQueryAsyncTask<TT;>;"
    .end local v2    # "queryReturn":Ljava/lang/Object;, "TT;"
    .end local p1    # "params":[Ljava/lang/Void;
    :catchall_0
    move-exception v0

    .end local v2
    .end local p1
    invoke-static {v0, v6}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v7
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/TG;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x48

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TG;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x5t
        0x2t
        0x15t
        0x2t
        0x3t
        0x2t
        0x14t
        0x6t
    .end array-data
.end method


# virtual methods
.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    move-object v1, p0

    .line 64995
    .local v0, "this":Lcom/facebook/ads/redexgen/X/TG;, "Lcom/facebook/ads/internal/database/AdDatabaseHelper$DatabaseQueryAsyncTask<TT;>;"
    :try_start_0
    check-cast p1, [Ljava/lang/Void;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/TG;->A00([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/TG;, "Lcom/facebook/ads/internal/database/AdDatabaseHelper$DatabaseQueryAsyncTask<TT;>;"
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/WU;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 64996
    .local v0, "this":Lcom/facebook/ads/redexgen/X/TG;, "Lcom/facebook/ads/internal/database/AdDatabaseHelper$DatabaseQueryAsyncTask<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/TG;->A00:Lcom/facebook/ads/redexgen/X/TJ;

    if-nez v0, :cond_1

    .line 64997
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/TG;->A03:Lcom/facebook/ads/redexgen/X/UO;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/UO;->A02(Ljava/lang/Object;)V

    goto :goto_0

    .line 64998
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/TG;, "Lcom/facebook/ads/internal/database/AdDatabaseHelper$DatabaseQueryAsyncTask<TT;>;"
    :cond_1
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/TG;->A03:Lcom/facebook/ads/redexgen/X/UO;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/TG;->A00:Lcom/facebook/ads/redexgen/X/TJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TJ;->A03()I

    move-result v1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/TG;->A00:Lcom/facebook/ads/redexgen/X/TJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TJ;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UO;->A01(ILjava/lang/String;)V

    .line 64999
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1    # "result":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/WU;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
