.class public final Landroidx/media3/datasource/ContentDataSource;
.super Landroidx/media3/datasource/BaseDataSource;
.source "ContentDataSource.java"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;
    }
.end annotation


# instance fields
.field private assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/FileInputStream;

.field private opened:Z

.field private final resolver:Landroid/content/ContentResolver;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, v0}, Landroidx/media3/datasource/BaseDataSource;-><init>(Z)V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/datasource/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Landroidx/media3/datasource/ContentDataSource;->uri:Landroid/net/Uri;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    .line 208
    :try_start_0
    iget-object v3, p0, Landroidx/media3/datasource/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    if-eqz v3, :cond_0

    .line 209
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_5

    :catch_0
    move-exception v3

    goto :goto_4

    .line 214
    :cond_0
    :goto_0
    iput-object v0, p0, Landroidx/media3/datasource/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    .line 216
    :try_start_1
    iget-object v3, p0, Landroidx/media3/datasource/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_1

    .line 217
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_2

    .line 222
    :cond_1
    :goto_1
    iput-object v0, p0, Landroidx/media3/datasource/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 223
    iget-boolean v0, p0, Landroidx/media3/datasource/ContentDataSource;->opened:Z

    if-eqz v0, :cond_2

    .line 224
    iput-boolean v2, p0, Landroidx/media3/datasource/ContentDataSource;->opened:Z

    .line 225
    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferEnded()V

    :cond_2
    return-void

    .line 220
    :goto_2
    :try_start_2
    new-instance v4, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    invoke-direct {v4, v3, v1}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 222
    :goto_3
    iput-object v0, p0, Landroidx/media3/datasource/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 223
    iget-boolean v0, p0, Landroidx/media3/datasource/ContentDataSource;->opened:Z

    if-eqz v0, :cond_3

    .line 224
    iput-boolean v2, p0, Landroidx/media3/datasource/ContentDataSource;->opened:Z

    .line 225
    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferEnded()V

    .line 227
    :cond_3
    throw v1

    .line 212
    :goto_4
    :try_start_3
    new-instance v4, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    invoke-direct {v4, v3, v1}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    :goto_5
    iput-object v0, p0, Landroidx/media3/datasource/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    .line 216
    :try_start_4
    iget-object v4, p0, Landroidx/media3/datasource/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_4

    .line 217
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v3

    goto :goto_7

    .line 222
    :cond_4
    :goto_6
    iput-object v0, p0, Landroidx/media3/datasource/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 223
    iget-boolean v0, p0, Landroidx/media3/datasource/ContentDataSource;->opened:Z

    if-eqz v0, :cond_5

    .line 224
    iput-boolean v2, p0, Landroidx/media3/datasource/ContentDataSource;->opened:Z

    .line 225
    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferEnded()V

    .line 228
    :cond_5
    throw v3

    .line 220
    :goto_7
    :try_start_5
    new-instance v4, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    invoke-direct {v4, v3, v1}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 222
    :goto_8
    iput-object v0, p0, Landroidx/media3/datasource/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 223
    iget-boolean v0, p0, Landroidx/media3/datasource/ContentDataSource;->opened:Z

    if-eqz v0, :cond_6

    .line 224
    iput-boolean v2, p0, Landroidx/media3/datasource/ContentDataSource;->opened:Z

    .line 225
    invoke-virtual {p0}, Landroidx/media3/datasource/BaseDataSource;->transferEnded()V

    .line 227
    :cond_6
    throw v1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 200
    iget-object v0, p0, Landroidx/media3/datasource/ContentDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/16 v2, 0x7d0

    .line 79
    :try_start_0
    iget-object v3, v0, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v3

    .line 80
    iput-object v3, v1, Landroidx/media3/datasource/ContentDataSource;->uri:Landroid/net/Uri;

    .line 82
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/datasource/BaseDataSource;->transferInitializing(Landroidx/media3/datasource/DataSpec;)V

    .line 85
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content"

    invoke-static {v4, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 86
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 88
    const-string v6, "android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT"

    invoke-virtual {v4, v6, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    iget-object v6, v1, Landroidx/media3/datasource/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    const-string v7, "*/*"

    .line 90
    invoke-virtual {v6, v3, v7, v4}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_5

    .line 94
    :cond_0
    iget-object v4, v1, Landroidx/media3/datasource/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    const-string v6, "r"

    invoke-virtual {v4, v3, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 96
    :goto_0
    iput-object v4, v1, Landroidx/media3/datasource/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_b

    .line 104
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    .line 105
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 106
    iput-object v3, v1, Landroidx/media3/datasource/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    const/16 v11, 0x7d8

    const/4 v12, 0x0

    if-eqz v10, :cond_2

    .line 114
    iget-wide v13, v0, Landroidx/media3/datasource/DataSpec;->position:J

    cmp-long v13, v13, v6

    if-gtz v13, :cond_1

    goto :goto_1

    .line 116
    :cond_1
    new-instance v0, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    invoke-direct {v0, v12, v11}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v0

    .line 119
    :cond_2
    :goto_1
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v13

    move-wide v15, v6

    .line 120
    iget-wide v5, v0, Landroidx/media3/datasource/DataSpec;->position:J

    add-long/2addr v5, v13

    .line 121
    invoke-virtual {v3, v5, v6}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v5

    sub-long/2addr v5, v13

    .line 123
    iget-wide v13, v0, Landroidx/media3/datasource/DataSpec;->position:J

    cmp-long v7, v5, v13

    if-nez v7, :cond_a

    const-wide/16 v13, 0x0

    if-nez v10, :cond_5

    .line 132
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 133
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    cmp-long v7, v5, v13

    if-nez v7, :cond_3

    .line 135
    iput-wide v8, v1, Landroidx/media3/datasource/ContentDataSource;->bytesRemaining:J

    goto :goto_2

    .line 137
    :cond_3
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v15

    sub-long/2addr v5, v15

    iput-wide v5, v1, Landroidx/media3/datasource/ContentDataSource;->bytesRemaining:J

    cmp-long v3, v5, v13

    if-ltz v3, :cond_4

    goto :goto_2

    .line 140
    :cond_4
    new-instance v0, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    invoke-direct {v0, v12, v11}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v0

    :cond_5
    sub-long v5, v15, v5

    .line 145
    iput-wide v5, v1, Landroidx/media3/datasource/ContentDataSource;->bytesRemaining:J
    :try_end_0
    .catch Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v3, v5, v13

    if-ltz v3, :cond_9

    .line 161
    :goto_2
    iget-wide v2, v0, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v5, v2, v8

    if-eqz v5, :cond_7

    .line 163
    iget-wide v5, v1, Landroidx/media3/datasource/ContentDataSource;->bytesRemaining:J

    cmp-long v7, v5, v8

    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_3
    iput-wide v2, v1, Landroidx/media3/datasource/ContentDataSource;->bytesRemaining:J

    :cond_7
    const/4 v4, 0x1

    .line 165
    iput-boolean v4, v1, Landroidx/media3/datasource/ContentDataSource;->opened:Z

    .line 166
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/datasource/BaseDataSource;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    .line 167
    iget-wide v2, v0, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v0, v2, v8

    if-eqz v0, :cond_8

    return-wide v2

    :cond_8
    iget-wide v2, v1, Landroidx/media3/datasource/ContentDataSource;->bytesRemaining:J

    return-wide v2

    .line 147
    :cond_9
    :try_start_1
    new-instance v0, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    invoke-direct {v0, v12, v11}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v0

    .line 126
    :cond_a
    new-instance v0, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    invoke-direct {v0, v12, v11}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v0

    .line 99
    :cond_b
    new-instance v0, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not open file descriptor for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4, v2}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v0
    :try_end_1
    .catch Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 154
    :goto_4
    new-instance v3, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    .line 156
    instance-of v4, v0, Ljava/io/FileNotFoundException;

    if-eqz v4, :cond_c

    const/16 v2, 0x7d5

    .line 158
    :cond_c
    invoke-direct {v3, v0, v2}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v3

    .line 152
    :goto_5
    throw v0
.end method

.method public read([BII)I
    .locals 8

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 174
    :cond_0
    iget-wide v0, p0, Landroidx/media3/datasource/ContentDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-nez v2, :cond_1

    return v3

    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    int-to-long v6, p3

    .line 181
    :try_start_0
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 182
    :goto_0
    iget-object v0, p0, Landroidx/media3/datasource/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v3, :cond_3

    return v3

    .line 190
    :cond_3
    iget-wide p2, p0, Landroidx/media3/datasource/ContentDataSource;->bytesRemaining:J

    cmp-long v0, p2, v4

    if-eqz v0, :cond_4

    int-to-long v0, p1

    sub-long/2addr p2, v0

    .line 191
    iput-wide p2, p0, Landroidx/media3/datasource/ContentDataSource;->bytesRemaining:J

    .line 193
    :cond_4
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/BaseDataSource;->bytesTransferred(I)V

    return p1

    :catch_0
    move-exception p1

    .line 184
    new-instance p2, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    const/16 p3, 0x7d0

    invoke-direct {p2, p1, p3}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw p2
.end method
