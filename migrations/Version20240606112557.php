<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20240606112557 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE partie ADD etape_id INT NOT NULL');
        $this->addSql('ALTER TABLE partie ADD CONSTRAINT FK_59B1F3D4A8CA2AD FOREIGN KEY (etape_id) REFERENCES etape (id)');
        $this->addSql('CREATE INDEX IDX_59B1F3D4A8CA2AD ON partie (etape_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE partie DROP FOREIGN KEY FK_59B1F3D4A8CA2AD');
        $this->addSql('DROP INDEX IDX_59B1F3D4A8CA2AD ON partie');
        $this->addSql('ALTER TABLE partie DROP etape_id');
    }
}
